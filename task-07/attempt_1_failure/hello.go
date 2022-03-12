package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"os"

	"github.com/gocolly/colly"
)

type Richest_person struct {
	Name      string
	Net_worth string
	Age       string
	Source    string
	Country   string
}

func main() {
	fName := "data1.csv"
	file, err := os.Create(fName)
	if err != nil {
		log.Fatalf("Could not create file, err :%q", err)
		return
	}
	defer file.Close()
	writer := csv.NewWriter(file)
	defer writer.Flush()

	c := colly.NewCollector(
		colly.AllowedDomains("forbes.com", "www.forbes.com"),
	)

	c.OnHTML("tr.base ng-scope", func(e *colly.HTMLElement) {
		writer.Write([]string{
			e.ChildText("td.Country/Territory"),
			e.ChildText("td.Net.Worth"),
			e.ChildText("td.age"),
			e.ChildText("td.source"),
		})
		fmt.Println(e.Text)
	})
	c.OnRequest(func(r *colly.Request) {
		fmt.Println("Visiting ", r.URL)
	})
	defer fmt.Print("Finished Scrapping")
}
