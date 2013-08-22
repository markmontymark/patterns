#!/bin/sh

chdir behavioral/chainofresponsibility; go test 
chdir ../../behavioral/command ; go test
chdir ../../behavioral/interpreter ; go test
chdir ../../behavioral/iterator ; go test
chdir ../../behavioral/mediator ; go test
chdir ../../behavioral/memento ; go test
chdir ../../behavioral/observer ; go test
chdir ../../behavioral/state ; go test
chdir ../../behavioral/strategy ; go test
chdir ../../behavioral/templatemethod ; go test
chdir ../../behavioral/visitor ; go test


chdir ../../structural/adapter; go test
chdir ../../structural/bridge; go test
chdir ../../structural/composite; go test
chdir ../../structural/decorator; go test
chdir ../../structural/facade; go test
chdir ../../structural/flyweight; go test
chdir ../../structural/proxy; go test


chdir ../../creational/abstractfactory; go test
chdir ../../creational/builder; go test
chdir ../../creational/common; go test
chdir ../../creational/factorymethod; go test
chdir ../../creational/prototype; go test
chdir ../../creational/singleton; go test

chdir ../../

