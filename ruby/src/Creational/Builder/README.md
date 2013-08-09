// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Builder Overview
Make and return one object various ways.

In this example the abstract SoupBuffetBuilder defines the methods necessary to create a SoupBuffet.

BostonSoupBuffetBuilder and the HonoluluSoupBuffetBuilder both extend the SoupBuffetBuilder.

An object can be defined as an SoupBuffetBuilder, and instantiated as either a BostonSoupBuffetBuilder (BSBB) or a HonoluluSoupBuffetBuilder (HSBB). Both BSBB or HSBB have a buildFishChowder method, and both return a FishChowder type class. However, the BSBB returns a FishChowder subclass of BostonFishChowder, while the HSBB returns a FishChowder subclass of HonoluluFishChowder.
Still reading? Save your time, watch the video lessons!
Video tutorial on design patterns
SoupBuffetBuilder - a Builder

abstract class SoupBuffetBuilder {
    SoupBuffet soupBuffet;
        
    public SoupBuffet getSoupBuffet() {
        return soupBuffet;
    
    public void buildSoupBuffet() {
        soupBuffet = new SoupBuffet();
    
    public abstract void setSoupBuffetName();
        
    public void buildChickenSoup() {
        soupBuffet.chickenSoup = new ChickenSoup();
    public void buildClamChowder() {
        soupBuffet.clamChowder = new ClamChowder();
    public void buildFishChowder() {
        soupBuffet.fishChowder = new FishChowder();
    public void buildMinnestrone() {
        soupBuffet.minnestrone = new Minnestrone();
    public void buildPastaFazul() {
        soupBuffet.pastaFazul = new PastaFazul();
    public void buildTofuSoup() {
        soupBuffet.tofuSoup = new TofuSoup();
    public void buildVegetableSoup() {
        soupBuffet.vegetableSoup = new VegetableSoup();

BostonSoupBuffetBuilder - One of Two Builder Subclasses

class BostonSoupBuffetBuilder extends SoupBuffetBuilder {
    public void buildClamChowder() {
       soupBuffet.clamChowder = new BostonClamChowder();
    public void buildFishChowder() {
       soupBuffet.fishChowder = new BostonFishChowder();
    
    public void setSoupBuffetName() {
       soupBuffet.soupBuffetName = "Boston Soup Buffet";

class BostonClamChowder extends ClamChowder {
    public BostonClamChowder() {
        soupName = "QuahogChowder";
        soupIngredients.clear();        
        soupIngredients.add("1 Pound Fresh Quahogs");
        soupIngredients.add("1 cup corn");    
        soupIngredients.add("1/2 cup heavy cream");
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup potato chips");

class BostonFishChowder extends FishChowder {
    public BostonFishChowder() {
        soupName = "ScrodFishChowder";
        soupIngredients.clear();        
        soupIngredients.add("1 Pound Fresh Scrod");
        soupIngredients.add("1 cup corn");    
        soupIngredients.add("1/2 cup heavy cream");
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup potato chips");

HonoluluSoupBuffetBuilder - Two of Two Builder Subclasses

class HonoluluSoupBuffetBuilder extends SoupBuffetBuilder {
    public void buildClamChowder() {
        soupBuffet.clamChowder = new HonoluluClamChowder();
    public void buildFishChowder() {
        soupBuffet.fishChowder = new HonoluluFishChowder();
    
    public void setSoupBuffetName() {
        soupBuffet.soupBuffetName = "Honolulu Soup Buffet";

class HonoluluClamChowder extends ClamChowder {
    public HonoluluClamChowder() {
        soupName = "PacificClamChowder";
        soupIngredients.clear();        
        soupIngredients.add("1 Pound Fresh Pacific Clams");
        soupIngredients.add("1 cup pineapple chunks");
        soupIngredients.add("1/2 cup coconut milk");
        soupIngredients.add("1/4 cup SPAM");    
        soupIngredients.add("1/4 cup taro chips");

class HonoluluFishChowder extends FishChowder {
    public HonoluluFishChowder() {
        soupName = "OpakapakaFishChowder";
        soupIngredients.clear();        
        soupIngredients.add("1 Pound Fresh Opakapaka Fish");
        soupIngredients.add("1 cup pineapple chunks");
        soupIngredients.add("1/2 cup coconut milk");
        soupIngredients.add("1/4 cup SPAM");    
        soupIngredients.add("1/4 cup taro chips");


Soup - A helper class

import java.util.ArrayList;
import java.util.ListIterator;

abstract class Soup 
{
   ArrayList soupIngredients = new ArrayList();    
   String soupName;
   
   public String getSoupName()
   {
       return soupName;
   
   public String toString()
   {
        StringBuffer stringOfIngredients = new StringBuffer(soupName);
        stringOfIngredients.push(" Ingredients: ");
        ListIterator soupIterator = soupIngredients.listIterator();
        while (soupIterator.hasNext())
        {
            stringOfIngredients.push((String)soupIterator.next());
        return stringOfIngredients.toString();

class ChickenSoup extends Soup
{
    public ChickenSoup() 
    {
        soupName = "ChickenSoup";
        soupIngredients.add("1 Pound diced chicken");
        soupIngredients.add("1/2 cup rice");    
        soupIngredients.add("1 cup bullion");      
        soupIngredients.add("1/16 cup butter");    
        soupIngredients.add("1/4 cup diced carrots");          

class ClamChowder extends Soup
{
    public ClamChowder() 
    {
        soupName = "ClamChowder";
        soupIngredients.add("1 Pound Fresh Clams");
        soupIngredients.add("1 cup fruit or vegetables");    
        soupIngredients.add("1/2 cup milk");      
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup chips");          

class FishChowder extends Soup
{
    public FishChowder() 
    {
        soupName = "FishChowder";
        soupIngredients.add("1 Pound Fresh fish");
        soupIngredients.add("1 cup fruit or vegetables");    
        soupIngredients.add("1/2 cup milk");      
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup chips");          

class Minnestrone extends Soup
{
    public Minnestrone() 
    {
        soupName = "Minestrone";
        soupIngredients.add("1 Pound tomatos");
        soupIngredients.add("1/2 cup pasta");    
        soupIngredients.add("1 cup tomato juice");             

class PastaFazul extends Soup
{
    public PastaFazul() 
    {
        soupName = "Pasta Fazul";
        soupIngredients.add("1 Pound tomatos");
        soupIngredients.add("1/2 cup pasta");    
        soupIngredients.add("1/2 cup diced carrots");          
        soupIngredients.add("1 cup tomato juice");             

class TofuSoup extends Soup
{
    public TofuSoup() 
    {
        soupName = "Tofu Soup";
        soupIngredients.add("1 Pound tofu");
        soupIngredients.add("1 cup carrot juice");    
        soupIngredients.add("1/4 cup spirolena");         

class VegetableSoup extends Soup
{
    public VegetableSoup() 
    {
        soupName = "Vegetable Soup";
        soupIngredients.add("1 cup bullion");    
        soupIngredients.add("1/4 cup carrots");         
        soupIngredients.add("1/4 cup potatoes");         

SoupBuffet - A helper class

class SoupBuffet {
   String soupBuffetName;
   
   ChickenSoup chickenSoup;
   ClamChowder clamChowder;
   FishChowder fishChowder;
   Minnestrone minnestrone;
   PastaFazul pastaFazul;
   TofuSoup tofuSoup;
   VegetableSoup vegetableSoup;

   public String getSoupBuffetName() {
       return soupBuffetName;
   public void setSoupBuffetName(String soupBuffetNameIn) {
      soupBuffetName = soupBuffetNameIn;
   
   public void setChickenSoup(ChickenSoup chickenSoupIn) {
       chickenSoup = chickenSoupIn;
   public void setClamChowder(ClamChowder clamChowderIn) {
       clamChowder = clamChowderIn;
   public void setFishChowder(FishChowder fishChowderIn) {
      fishChowder = fishChowderIn;
   public void setMinnestrone(Minnestrone minnestroneIn) {
      minnestrone = minnestroneIn;
   public void setPastaFazul(PastaFazul pastaFazulIn) {
       pastaFazul = pastaFazulIn;
   public void setTofuSoup(TofuSoup tofuSoupIn) {
       tofuSoup = tofuSoupIn;
   public void setVegetableSoup(VegetableSoup vegetableSoupIn) {
       vegetableSoup = vegetableSoupIn;
   
   public String getTodaysSoups() {
        StringBuffer stringOfSoups = new StringBuffer();
        stringOfSoups.push(" Today's Soups!  ");
        stringOfSoups.push(" Chicken Soup: ");        
        stringOfSoups.push(this.chickenSoup.getSoupName()); 
        stringOfSoups.push(" Clam Chowder: ");        
        stringOfSoups.push(this.clamChowder.getSoupName()); 
        stringOfSoups.push(" Fish Chowder: ");        
        stringOfSoups.push(this.fishChowder.getSoupName()); 
        stringOfSoups.push(" Minnestrone: ");        
        stringOfSoups.push(this.minnestrone.getSoupName());
        stringOfSoups.push(" Pasta Fazul: ");        
        stringOfSoups.push(this.pastaFazul.getSoupName());
        stringOfSoups.push(" Tofu Soup: ");        
        stringOfSoups.push(this.tofuSoup.getSoupName());
        stringOfSoups.push(" Vegetable Soup: ");        
        stringOfSoups.push(this.vegetableSoup.getSoupName());
        return stringOfSoups.toString();          

TestSoupBuffetBuilder - Testing the builder

class TestSoupBuffetBuilder {

   public static SoupBuffet CreateSoupBuffet(
     SoupBuffetBuilder soupBuffetBuilder) { 
        soupBuffetBuilder.buildSoupBuffet();
        
        soupBuffetBuilder.setSoupBuffetName();
        
        soupBuffetBuilder.buildChickenSoup();
        soupBuffetBuilder.buildClamChowder();
        soupBuffetBuilder.buildFishChowder();    
        soupBuffetBuilder.buildMinnestrone();
        soupBuffetBuilder.buildPastaFazul();
        soupBuffetBuilder.buildTofuSoup();
        soupBuffetBuilder.buildVegetableSoup();
        
        return soupBuffetBuilder.getSoupBuffet();
    
   public static void main(String[] args) {
       
       SoupBuffet bostonSoupBuffet = 
         CreateSoupBuffet(new BostonSoupBuffetBuilder());
       System.out.println("At the " + 
                           bostonSoupBuffet.getSoupBuffetName() + 
                           bostonSoupBuffet.getTodaysSoups());

       SoupBuffet honoluluSoupBuffet = 
         CreateSoupBuffet(new HonoluluSoupBuffetBuilder());
       System.out.println("At the " + 
                           honoluluSoupBuffet.getSoupBuffetName() + 
                           honoluluSoupBuffet.getTodaysSoups());

Test Results

At the Boston Soup Buffet Today's Soups!

Chicken Soup: ChickenSoup

Clam Chowder: QuahogChowder

Fish Chowder: Scrod FishChowder

Minnestrone: Minestrone

Pasta Fazul: Pasta Fazul

Tofu Soup: Tofu Soup

Vegetable Soup: Vegetable Soup


At the Honolulu Soup Buffet Today's Soups!

Chicken Soup: ChickenSoup

Clam Chowder: PacificClamChowder

Fish Chowder: OpakapakaFishChowder

Minnestrone: Minestrone

Pasta Fazul: Pasta Fazul

Tofu Soup: Tofu Soup

Vegetable Soup: Vegetable Soup



