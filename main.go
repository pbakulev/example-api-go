package main

import (
	"fmt"
	"net/http"

	"github.com/prometheus/client_golang/prometheus/promhttp"
)

func up(w http.ResponseWriter, req *http.Request) {

	fmt.Fprintf(w, "UP\n")
}

func main() {

	http.HandleFunc("/status", up)
	http.Handle("/metrics", promhttp.Handler())
	http.ListenAndServe(":8080", nil)
}
