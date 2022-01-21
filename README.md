# IFI-login-helper

### Script som setter opp SSH-nøkkel mot IFI-login maskiner

Brukes ved å kjøre de 3 kommandoen under i rekkefølge.

"Erstatt dittnavn i linje 2, med UIO brukernavn"
```
git clone https://github.com/eiriktaa/IFI-login-helper 
cd IFI-login-helper && sed -i -e 's/USERNAME/dittnavn/g' ssh-keys-to-ifi.bash
bash ssh-keys-to-ifi.bash
```
Trykk 2 ganger på enter for å legge til en nøkkel.
Trykk 1 gang på enter for å bekrefte fingerprint

Du er nå inne på IFI maskinen.

Skriv exit i terminalen for å slutte sesjonen.
