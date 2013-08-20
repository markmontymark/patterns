//BostonSoupBuffetBuilder - One of Two Builder Subclasses

package builder



type BostonSoupBuffetBuilder struct { // implements SoupBuffetBuilder {
    public void buildClamChowder() {
       soupBuffet.clamChowder = new BostonClamChowder()
    }
    public void buildFishChowder() {
       soupBuffet.fishChowder = new BostonFishChowder()
    }    
    
    public void setSoupBuffetName() {
       soupBuffet.soupBuffetName = "Boston Soup Buffet"
    }
}
