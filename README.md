# IFI-login-helper

### Script som setter opp SSH-nøkkel mot IFI-login maskiner

Brukes ved å kjøre de 3 kommandoen under i rekkefølge.

"Erstatt dittnavn i linje 2, med UIO brukernavn"
```
git clone https://github.com/Eiriktaa/IFI-login-helper 
cd IFI-login-helper && bash ssh-keys-to-ifi.bash dittnavn

```
Trykk 2 ganger på enter for å legge til en nøkkel.
Trykk 1 gang på enter for å bekrefte fingerprint

Du er nå inne på IFI maskinen.

Skriv exit i terminalen for å slutte sesjonen.

##¤ Make UIO
Program som henter alle C filer og makefiler, sender dem til UIO maskinene for å kompilere

##### Bruk som script:

Legg makeuio scriptet inn i mappen du jobber og bruk ./makeuio argument
Argument er til makefilen, "run/clean/valgrind"

##### Bruk som standalone

Opprett mappen ~/bin

Rediger .bashrc og legg inn følgende i filen.
```
export PATH=$PATH:~/bin
```
Flytt makeuio inn i ~/bin

```
chmod u+x makeuio
```
Du kan nå skrive makeuio i terminalen så sender den  c/make filer til uio og bygger
