# PLOS Taxonomy

A machine readable version of http://www.plosone.org/taxonomy

**Health warning:** This worked for me (17 April 2014) but will probably break if the structure of this page is changed.

### Why?

1. Because I couldn't find a better list of academic subjects than this one
2. Because it's only available as a webpage
3. Because it might be useful?

### How?

Assuming you have a relatively modern Ruby environment (> 1.8.7) then:

1. `bundle install`
2. `ruby plos_taxonomy_parser.rb`
3. Take a look at `plos_taxonomy_#{timestamp}.json`
