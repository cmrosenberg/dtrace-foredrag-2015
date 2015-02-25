
<em>This repository holds a presentation I held for the student community
[MAPS](http://foreninger.uio.no/maps/) at the University of Oslo.
The content is in Norwegian</em>

# DTrace foredrag 25.02.2015

Du kan lese slidene [her](https://github.com/cmrosenberg/dtrace-foredrag-2015/blob/master/slides/slides.pdf).

## Kilder

* Mesteparten av introduksjonen baserte seg på artikkelen
[Hidden in Plain Sight](http://queue.acm.org/detail.cfm?id=1117401) som er
skrevet av [Bryan Cantrill](http://en.wikipedia.org/wiki/Bryan_Cantrill),
en av skaperne av DTrace. Veldig godt skrevet artikkel om motivasjonen og
prinsippene bak DTrace. Anbefales!

## Ekstrastoff

For å lære mer om hvordan du bruker DTrace anbefaler jeg å først se på
[DTrace User Guide](http://docs.oracle.com/cd/E19253-01/819-5488/gcfba/index.html)
og deretter den komplette manualen. Den mest oppdaterte versjonen av den komplette
manualen finner du på [illumos Dynamic Tracing Guide](
http://dtrace.org/guide/chapter.html). I sistnevnte finner du absolutt alt du
måtte lure på om D-språket osv.

[Brendan Gregg](http://www.brendangregg.com/) er et svært sentralt navn
i DTrace-land spesielt og systemanalyse generelt. Han har både forfattet
[den viktigste bokutgivelsen om DTrace](http://dtracebook.com/index.php/Main_Page) med
tilhørende [eksempelscripts](http://dtracebook.com/index.php/Main_Page). Han
har også laget [The DTraceToolkit](http://www.brendangregg.com/dtracetoolkit.html),
som er et bibliotek av eksempelscripts man kan lære fra.

I senere tid har han konsentrert seg mer om systemanalyse på linux.
[Her](https://www.youtube.com/watch?v=TMXZcgnhXvg)
er veldig interessant foredrag der han sammenligner DTrace med tilsvarende verktøy
på Linux, og [her](https://www.youtube.com/watch?v=SN7Z0eCn0VY) har han et foredrag
dedikert til å vise frem Linux-verktøy som <code>ftrace</code> osv. Han har også oversatt mange av scriptene han skrev for DTrace til tilsvarende teknologier på Linux. Sjekk ut [temasiden hans](http://www.brendangregg.com/linuxperf.html) for å lære mer.

Brendan Gregg har også veldig interessante perspektiver på <em>metode</em>. Ta
en titt på [USE-metoden](http://www.brendangregg.com/usemethod.html). Hvis du
synes dette er spennende bør du sjekke ut boka
[Systems Performance](http://www.brendangregg.com/sysperfbook.html).

## Jeg har lyst til å prøve DTrace, men jeg har ikke et system med DTrace installert

Hvis bare vil leke litt med DTrace, anbefaler jeg å teste det i en virtuell
maskin med FreeBSD. Jeg liker å bruke [Vagrant](https://www.vagrantup.com/)
til å håndtere virtuelle maskiner: Dette gjør at du kan ssh'e rett inn i en
ferdig maskin uten å måte bruke kjempelang tid på å sette opp systemet. Du får også automatisk en delt hjemmemappe med vertsmaksinen, som
er kjekt. Jeg liker vagrant-konfigurasjonen som kommer som standard fra
[vagrant-freebsd](https://github.com/wunki/vagrant-freebsd). Hvis du ikke
liker denne kan du enten endre konfigurasjonen i <code>Vagrantfile</code>n
, [sette opp en boks selv](https://github.com/wunki/vagrant-freebsd#create-your-own-freebsd-box)
eller [finne en annen boks](https://atlas.hashicorp.com/boxes/search).


### For den naive...

(Disse instruksene forutsetter at du er på et UNIX-aktig system)

1. Last ned og installer [Vagrant](https://www.vagrantup.com/).
Dette krever at du har programvare for å lage virtuelle maskiner, for
eksempel [Virtualbox](https://www.virtualbox.org/).

2. Lag en ny mappe og gå inn i den.

3. Last ned filen <code>Vagrantfile</code> fra
[vagrant-freebsd](https://github.com/wunki/vagrant-freebsd). Du må trykke
på 'raw' for å få selve filen, og ikke html'en som representerer filen.

4. Kjør kommandoen <code>vagrant up</code> mens du står i mappa med <code>Vagrantfile</code>n.

5. Vagrant vil be deg om administratorpassordet ditt slik at et delt
[nfs](http://en.wikipedia.org/wiki/Network_File_System)-område settes op mellom
vertsmaskinen og gjestmaskinen.

6. Skriv <code>vagrant ssh</code> for å logge deg inn i maskinen. Voilà! Du er inne.

7. Skriv <code>sudo dtrace -l</code> for å liste alle probes på systemet ditt.
Du er i gang!
