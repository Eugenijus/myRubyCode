## Description

This is a project I had to do for **Ruby** on Rails class when I was in Vilnius University (**Computer Science BSc**) in year 2009.
The goal was to learn TDD and Ruby language by creating a project and I choose to create **Car rental management system**.

===========================================================

Reikalavimai is savybes.txt :

A) Automobiliu nuomavimo valdymo sistema.

0) Vartotojas - User
1) Automobilis - Auto
2) Garazas(ai) - Garage
3) Klientas - Client
4) Uzsakymas - Order
5) Kalendorius/Tvarkarastis

B) SAVYBES:

C) Pagrindines savybes:

===========================================================

Testai:
is viso: 92

5 naudoti matcheriai:
be_instance_of
be
eql (bill_spec.rb)
include (client_spec.rb)
have (client_spec.rb)

custom matcheriai:
be_more_than (bill_spec)
have_digits (client_spec)

===========================================================

PADARYTA:

* Valdymo sistema leidzia sukurti vartotoja
	- vartotojo vardas
	- slaptazodis
	- Vardas, Pavarde
	- turi unikalu id
		- paskutinis id issaugomas faile
	
* Valdymo sistema leidzia prisijungti/atsijungti vartotojui

* Vartotojas gali itraukti automobili i automobiliu sarasa
	- galima sukurti Automobilio objekta
		Automobilis tures tokius duomenis:
		- id, Marke, Reg. numeri, tipas, spalva
		- types: economy, compact, full-size, luxury, convertable, sports-car, minivan, pick-up-truck, van
	- Visos masinos bus saugomos masyve
	
Klientas:
- butinai turi pateikti:
	- Varda, Pavarde, tel. nr., pasa (asm. kodas), vairavimo teises (nr.)
- gali pateikti papildomai:
	- el. pastas, gyv. adresa,
	
* Vartotojas gali sukurti uzsakyma, kuris tures:
	- paemimo data, laikas, paemimo vieta (garazai)
	- grazinimo data, laikas, grazinimo vieta
	- Kliento duomenys (kliento id)
	
* Vartotojas gali israshyti saskaita:
	Saskaita:
	- uzsakymo nr.
	- paskaiciuotas nuomos laikas (dienos, valandos)
	- nuomos tarifas,
	- totali suma
	
Valdymo sistema turi:
- leisti redaguoti/trinti vartotojus ir ju duomenis

Vartotojas gali:
- sukurti nauja klienta ir red. jo duomenis
- sukurti uzsakyma
- is anksto isnuomoti klientui automobili ir irasyti i tvarkarasti
  - paemimo data, laikas
  - paemimo vieta (garazai)
  - grazinimo data, laikas
  - atlikti apmokejima

Garazas tures:
- adresa

================================================================

NEPADARYTA:

Vartotojas gali israshyti saskaita:
	- papildomos paslaugos

Vartotojas gali:
- sukurti nauja garaza
- nustatyti mokesti uz automobiliu nuoma/val.
- paziureti kurie automobiliai garaze neuzimti

Garazas tures:
- max automoboliu vietu skaiciu
- automobilius (array?)
- parkavimo vietos (uzimta/neuzimta)

Kalendorius/Tvarkarastis:
- kokie automobiliai siandien isnuomojami/grazinami
- kokie automobiliai sia savaite isnuomojami/grazinami

Klientas
- gali pasirinkti:
	- masina, garaza is kur paims (is Vilniaus, ar is Kauno)
	- Su navigacine iranga, ar be
	- Ar reikalinga vaiko kedute

Klientas noretu:
- zinoti kokie automobiliai yra prieinami
- kada galima bus issinuomoti konkretu automobili
- is anksto susitarti ir isnuomoti automobili (booking)
- atsiskaityti uz nuoma kortele/grynais
