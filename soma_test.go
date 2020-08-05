package main

import "testing"

func TestSoma(t *testing.T) {
	obtido := soma(5, 5)
	esperado := 10

	if obtido != esperado {
		t.Errorf("Soma(5,5) \n obtido: %v \n esperado:  \n%v", obtido, esperado)
	}
}
