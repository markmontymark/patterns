usage = '''
This module spawns a `git clone` for all of a user's git repositories
$ echo "https://github.com/markmontymark" > urls.txt
$ node.io git-clone-all.coffee < urls.txt
'''

nodeio = require 'node.io'
spawn  = require('child_process').spawn

options = max: 10, take:10


class GitCloneAll extends nodeio.JobClass

	@tab = '?tab=repositories'
	@gitsuffix = '.git'

	run: (url) ->
		console.error "run on url #{url}"
		@getHtml(url + GitCloneAll.tab, (err, $) ->
			repos = []
			githost = ("" + url).match("^(.*[^/])/")
			githost = githost[0].replace(/\/$/,'') if githost? and Object::toString.call(githost) is '[object Array]'
			$('h3 a').each((node)->
				repo_url = node?.attribs?.href
				repos.push(githost + repo_url) if repo_url
				return true
			)
			@emit repos
		)

	output: (repos) ->
		for repo in repos
			console.error "git clone #{repo + GitCloneAll.gitsuffix}"
			#child = spawn('git',['clone',"#{repo + gitsuffix}"],{env:process.env})
		return null


class UsageDetails extends nodeio.JobClass
	input: ->
		@status usage
		@exit()

@class = GitCloneAll
@job = {
    count: new GitCloneAll(options)
    help: new UsageDetails()
}
