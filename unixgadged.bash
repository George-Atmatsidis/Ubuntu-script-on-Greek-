#!/usr/bin/env bash
# unixgadged.bash 
# Author       : Atmatsidis Giorgos                                            
# Released On  : Friday 04 September 2015                                      
# Version      : 1.0.0                                                         
# Desription   : 16 χρήσιμες-βασικές εντολές που θα σας χρειαστούν αργά η γρήγορα στο Ubuntu σας.
#		Για να τρέξετε το script θα πρέπει να το κάνετε εκτελέσιμο (chmod u+x) και ,
# 		να το τρέξετε από το τερματικό σας {/.yourscript.*}
#		Στο script υπάρχει μενού πολύ καθοδηγητικό για να ακολουθήσετε κάποια συγκεκριμένα μονοπατια.
#		Μέτα από κάθε ολοκληρωμένη εκτέλεση κάποιας επιλογής (1-16) θα εμφανιστεί ένα αρχείο καταγραφής,
#		με όλα τα μηνύματα εξόδου των εντολών για αυτό καλό θα ήταν,
#		να δημιουργήσετε έναν φάκελο και να τρέχετε το script από εκεί μέσα :)
#		Σημείωση: Το script ανανεώνει τα αρχεία καταγραφής κάθε φορά που τρέχει μια συγκεκριμένη επιλογή,
#		(εάν θέλετε να συγκρίνετε ανά χρονικά διαστήματα τα αποτελέσματα θα,
#		πρέπει να αποθηκεύσετε ξεχωριστά το αρχείο ή να το μετονομάσετε)
#		Τέλος πριν την εκτέλεση το script ανοίξτε το τερματικό ως full screen είτε κάνοντας,
#		κλικ στο παράθυρο 2-φορές είτε με F11.

#
# Dependencies : This script greated and tested on Ubuntu operating system,i cant guaranty for sure if that run correct to other operating's system's like Debian.                             
#                                                                               
# COPYRIGHT    : This program is free software: you can redistribute it and/or 
#                modify it under the terms of the GNU General Public License as
#                published by the Free Software Foundation, either version 3 of
#                the License, or (at your option) any later version. This      
#                program is distributed in the hope that it will be useful, but
#                WITHOUT ANY WARRANTY; without even the implied warranty of    
#                MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
#                GNU General Public License for more details.                  

#var
selection="0"
boolean=""
#end var
 echo "-----MENU-----"
 echo "" 
 echo " Xαίρεται $USER τι θα θέλατε να κάνετε ;
   [πατήστε το πλήκτρο της επιλογής σας]"
 echo ""
 echo "    1.Eνημέρωση - Aναβάθμιση"
 echo ""
 echo "    2.Θέλω τον καθαρισμό του συστήματος και τους παλαιούς πυρήνες"
 echo ""
 echo "    3.Έχω πρόβλημα στο Τερματικό καθώς εκτελώ 'apt-get update' && 'apt-get upgrade'"
 echo ""
 echo "    4.Θέλω να δω τις αναλυτικές πληροφορίες του συστήματος μου"
 echo ""
 echo "    5.Θέλω να δω ποιό είναι το μοντέλο της κάρτας γραφικών και ποιόν οδηγό (driver) χρησιμοποιεί"
 echo ""
 echo "    6. Θέλω να δω πληροφορίες για την κάρτα του δικτύου και,τον οδηγό(driver) ο οποίος χρησιμοποιείται"
 echo ""
 echo "    7.Θέλω να δω πόσα GB έχει γράψει ο δίσκος (Χρήσιμο για σκληρούς δίσκους (πχ SSD)"
 echo ""
 echo "    8.Θέλω να δω τον αριθμό των πακέτων καθώς επίσης και των βιβλιοθηκών - εξαρτήσεων του συστήματος που είναι εγκατεστημένα"
 echo ""
 echo "    9.Θέλω να δω τις πληροφορίες του επεξεργαστή CPU"     
 echo ""
 echo "   10.Θέλω να δω τις πληροφορίες της μνήμης RAM και προβολή του μεγέθους της μνήμης σε gigabyte και την προβολή Swap που είναι σε χρήση"      
 echo ""
 echo "   11.Θέλω να δω τα διαμερίσματα που έχω στον δίσκο μου για το Ubuntu 'swap,home,boot κ.α' και τον χώρο που χρησιμοποιείται"  
 echo ""
 echo "   12. Θέλω να δω τις πληροφορίες των pci/usb/audio/system drivers συσκευών " 
 echo ""
 echo "   13. Εμφάνιση των TCP/UDP port's" 
 echo ""
 echo "   14. Εμφάνιση των υπηρεσιών (services) του υπολογιστή" 
 echo ""
 echo "   15.Θέλω να βρώ κάποιο-α αρχείο-α καθώς και στον φάκελο στον οποίο βρίσκονται"  
 echo "" 
 echo "   16. Θέλω να δω ποιά προγράμματα εκτελούνται αυτή την στιγμή και τις εξαρτήσεις τους"  
 echo "" 
 echo "   0.Έξοδος" 
 echo " Πατήστε την επιλογή σας παρακάτω"
  read selection
 #check for correct entry 
 
while (("$selection" <= 0 )) || (("$selection" > 16 ))
 do
  
  if [ "$selection" = "0" ] ; then
    clear
      exit
  fi 
      clear
      echo " <!> Έχετε δώσει λάθος εντολή.Παρακαλώ πληκτρολογήστε την σωστή επιλογή"
      echo ""
      echo "    1.Eνημέρωση - Aναβάθμιση"
      echo ""
      echo "    2.Θέλω τον καθαρισμό του συστήματος και τους παλαιούς πυρήνες"
      echo ""
      echo "    3.Έχω πρόβλημα στο Τερματικό καθώς εκτελώ 'apt-get update' && 'apt-get upgrade'"
      echo ""
      echo "    4.Θέλω να δω τις αναλυτικές πληροφορίες του συστήματος μου"
      echo ""
      echo "    5.Θέλω να δω ποιό είναι το μοντέλο της κάρτας γραφικών και ποιόν οδηγό (driver) χρησιμοποιεί"
      echo ""
      echo "    6.Θέλω να δω πληροφορίες για την κάρτα του δικτύου και,τον οδηγό(driver) ο οποίος χρησιμοποιείται"
      echo ""
      echo "    7.Θέλω να δω πόσα GB έχει γράψει ο δίσκος (Χρήσιμο για σκληρούς δίσκους (πχ SSD)"
      echo ""
      echo "    8.Θέλω να δω τον αριθμό των πακέτων καθώς επίσης και των βιβλιοθηκών - εξαρτήσεων του συστήματος που είναι εγκατεστημένα"
      echo ""
      echo "    9.Θέλω να δω τις πληροφορίες του επεξεργαστή CPU"     
      echo ""
      echo "   10.Θέλω να δω τις πληροφορίες της μνήμης RAM και προβολή του μεγέθους της μνήμης σε gigabyte και την προβολή Swap που είναι σε χρήση"     
      echo ""
      echo "   11.Θέλω να δω τα διαμερίσματα που έχω στον δίσκο μου για το Ubuntu 'swap,home,boot κ.α' και τον χώρο που χρησιμοποιείται"  
      echo ""
      echo "  12.Θέλω να δω τις πληροφορίες των pci/usb/audio/system drivers συσκευών" 
      echo ""
      echo "  13.Εμφάνιση των TCP/UDP port's" 
      echo ""
      echo "  14.Εμφάνιση των υπηρεσιών (services) του υπολογιστή" 
      echo ""
      echo "  15.Θέλω να βρώ κάποιο-α αρχείο-α καθώς και στον φάκελο τον οποίο βρίσκονται" 
      echo "" 
      echo "  16.Θέλω να δω ποιά προγράμματα εκτελούνται αυτή την στιγμή και τις εξαρτήσεις τους" 
      echo "" 
      echo "  0.Έξοδος"
       read selection   
done #end of check correct entry
#create logfile for file-'s path
 if [ "$selection" = "15" ] ; then
    echo "">file-path-information
 fi 
boolean=true #accessory variable 
###########################
##start main loop
while [ "$boolean" = "true" ] 
do #start loop

 if [ "$selection" = "1" ] || [ "$answer" = "1" ] ; then
#start update
	  echo "Έχετε πραγματοποιήση ενημέρωση και αναβάθμιση του συστήματος">update-upgrate-information # Write on logfile
    sudo apt-get update #run command
    echo "Παρακαλώ αναμένεται καθώς η διαδικασία καταγράφετε στο αρχείο"
    echo "" >>update-upgrate-information
    echo "### apt-get update output message ###" >>update-upgrate-information
    echo "" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get update >>update-upgrate-information #write on logfile the command output
 #end update 
 ##############  
 #start dist-upgrade
    sudo apt-get dist-upgrade #run command
    echo "Παρακαλώ αναμένεται καθώς η διαδικασία καταγράφετε στο αρχείο"
    echo "" >>update-upgrate-information
    echo "### apt-get dist-upgrade output message ###" >>update-upgrate-information
    echo "" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get dist-upgrade >>update-upgrate-information #write on logfile the command output
 #end update 
#start upgrade
    sudo apt-get -y upgrade  #run command
    echo "Παρακαλώ αναμένεται καθώς η διαδικασία καταγράφετε στο αρχείο"
    echo "" >>update-upgrate-information
    echo "### apt-get upgrade output message ###" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get upgrade >>update-upgrate-information
    echo "" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get -y autoremove  #run command
    echo "Παρακαλώ αναμένεται καθώς η διαδικασία καταγράφετε στο αρχείο"
    echo "" >>update-upgrate-information
    echo "### apt-get autoremove output message ###" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get autoremove >>update-upgrate-information
    sel1="1" 
    clear   
   else
    if [ "$selection" = "2" ] || [ "$answer" = "2" ] ; then
#start clean Ubuntu
	  echo "Έχετε πραγματοποιήση τον καθαρισμό του συστήματος και τους παλαιούς πυρήνες">clean-information # Write on logfile
    sudo apt-get --purge -y autoremove #run command
    sudo apt-get -y autoremove  #run command
    sudo apt-get -y autoclean  #run command
    sudo apt-get -y clean  #run command
    sudo apt-get purge $(dpkg -l | awk '/^rc/ { print $2 }') #run command
    echo "O νεότερος πυρήνας που είναι σε χρήση είναι ο παρακάτω" && uname -rm #run command
    echo "Παρακαλώ αναμένεται καθώς η διαδικασία καταγράφετε στο αρχείο"
    echo "" >>clean-information
    echo "### apt-get --purge autoremove output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get --purge autoremove >>clean-information #write on logfile the command output
    echo "">>clean-information
    echo "### apt-get autoremove output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get autoremove >>clean-information #write on logfile the command output
    echo "">>clean-information
    echo "### apt-get autoclean  output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get autoclean >>clean-information #write on logfile the command output
    echo "">>clean-information
    echo "" >>clean-information
    echo "">>clean-information
    echo "### apt-get purge output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get purge $(dpkg -l | awk '/^rc/ { print $2 }')>>clean-information #write on logfile the command output
    echo "" >>clean-information
    echo "" >>clean-information
    echo "### O νεότερος πυρήνας που είναι σε χρήση">>clean-information
    echo "">>clean-information
    uname -rm >>clean-information
    sel2="2"
    clear
   else
     if [ "$selection" = "3" ] || [ "$answer" = "3" ] ; then 
#start clean terminal Ubuntu
	echo "Έχετε πραγματοποιήση τον καθαρισμό του τερματικού (~Terminal~) σας αποθέτηριου">terminal-fix-information #write on logfile
      sudo rm -rf /var/lib/apt/lists/* #run command
      sudo apt-get update #run command 
      sudo dpkg --configure -a #run command 
      sudo apt-get update #run command
      sudo apt-get install -f #run command       
    echo "">>terminal-fix-information
    echo "" >>terminal-fix-information
    echo " ###Παρακάτω είναι οι πηγές λογισμικού.Μπορείτε με βάση αυτου να βοηθηθείτε μέσα στο φόρουμ επείδη παραθέτει αρκετές πληροφορίες που μπορούν να χρειαστούν για την επίλυση του προβλήματος ###"   >>terminal-fix-information
    echo "" >>terminal-fix-information
    echo "" >>terminal-fix-information
    find /etc/apt -name '*.list' -exec bash -c 'echo -e "\n$1\n"; cat -n "$1"' _ '{}' \;  >>terminal-fix-information #write on logfile the command output
    sel3="3"
    clear 
#end clean terminal Ubuntu
else 
 if [ "$selection" = "4" ] || [ "$answer" = "4" ] ; then 
#start system information
	  echo "### Οι πληροφόριες του συστήματος αναγράφονται παρακάτω ###">system-hardware-information #write on logfile
    echo "Παρακαλώ αναμένεται καθώς η διαδικασία καταγράφετε στο αρχείο[ανοίξτε στο αρχειο καταγράφης]"
    echo "">>system-hardware-information
    echo "" >>system-hardware-information
    sudo dmidecode >>system-hardware-information
    sel4="4"
    clear
#end system information
 else
   if [ "$selection" = "5" ] || [ "$answer" = "5" ] ; then 
#start GPU card+driver information
	  echo "### Οι πληροφόριες της κάρτας γραφικών και ο οδηγός (driver) αναγράφονται παρακάτω ###">graphics-information #write on logfile
    echo "">>graphics-information
    echo "">>graphics-information
    lspci -nnk | grep -iA2 vga >>graphics-information
    sel5="5"
    clear
 #GPU card+driver information 
 else
  if [ "$selection" = "6" ] || [ "$answer" = "6" ] ; then 
#start Network card+driver information
	  echo "### Οι πληροφόριες της κάρτας δικτύου και ο οδηγός (driver) αναγράφονται παρακάτω ###">network-card-information #write on logfile
    echo ""
    echo ""
    lspci -nnk | grep -iA2 net >>network-card-information
    sel6="6"
    clear 
 #Network card+driver information 
 else
     if [ "$selection" = "7" ] || [ "$answer" = "7" ] ; then 
#start GB writes on disk information
	  echo "### Οι πληροφόριες για τον αριθμό GB που έγραψε ο δίσκος αναγράφονται παρακάτω ###">write-gb-disk #write on logfile
    echo ""
    echo ""
    devices=$(df | grep "^/" | awk '{print $1}') && echo $devices  &&  for i in $devices ; do sudo tune2fs -l $i | awk '/^Lifetime\ writes/' ; done >>write-gb-disk
    sel7="7"
    clear 
 #end GB writes on disk information
 else
   if [ "$selection" = "8" ] || [ "$answer" = "8" ] ; then 
#start how much packages system have
    dpkg --get-selections >packages-installed-information
    wc -l packages-installed-information >>packages-installed-information
    sel8="8"
    clear 
 #end of how much packages system have;
 else
 if [ "$selection" = "9" ] || [ "$answer" = "9" ] ; then 
#cpu information
    cat /proc/cpuinfo >cpu-information
    sel9="9"
    clear
 #cpu information
 else
 if [ "$selection" = "10" ] || [ "$answer" = "10" ] ; then 
    #ram-swap information
    cat /proc/meminfo >ram-swap-information
    echo "">>ram-swap-information
    echo "">>ram-swap-information
    echo "Πόσο Ram χρησιμοποιείται αυτή την στιγμή">>ram-swap-information
    echo "">>ram-swap-information
    echo "">>ram-swap-information
    free -g >>ram-swap-information
    sel10="10"
    clear  
#ram-swap information
else
 if [ "$selection" = "11" ] || [ "$answer" = "11" ] ; then  
#partition information
    sudo df -HT>partions-information
    sel11="11"
    clear  
#partition information   
 else
  if [ "$selection" = "12" ] || [ "$answer" = "12" ] ; then  
#pci information
    echo"PCI συσκευές">pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    lspci>>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"USB συσκευές">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    lsusb >>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"Audio συσκευή/ές">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audion-system_drivers-information
    echo"">>pci-usb-audion-system_drivers-information
    lspci | grep -i audio >>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"System drivers">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    sudo lsmod >>pci-usb-audio-system_drivers-information    
    sel12="12"
    clear  
#pci-usb-audio-system_drivers information
 else
   if [ "$selection" = "13" ] || [ "$answer" = "13" ] ; then  
#tcp/udp information
    echo "#####TCP#####">Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    sudo ss -t -a>>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"#####UDP#####">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    sudo ss -u -a>>Tcp-udp-information
    sel13="13"
    clear  
#tcp/udp information
else
  if [ "$selection" = "14" ] || [ "$answer" = "14" ] ; then  
#services information
    sudo service --status-all>services-information
    sel14="14"
    clear  
#services information
else 
   if [ "$selection" = "15" ] || [ "$answer" = "15" ] ; then  
#file road information
echo "  Εδώ μπορείτε να χρησιμοποιήσετε τους ειδικου χαρακτήρες <βαλαντέρ> για την αναζήτηση αρχείου"
echo "  Το * το οποίο υποδουλώνει ότι ταιριάζει με οποιοδήποτε χαρακτήρα πχ Τ*.*?"
echo "  Το ? το οποίο υποδουλώνει ότι ταιριάζει με έναν οποιοδήποτε χαρακτήρα πχ Τ?αρχ?ειο μου.do?"
echo "  Παρακάτω πληκρολογίστε κάποιο όνομα αρχείου προς αναζήτηση"
read fipath
    echo"">>file-path-information
    echo"">>file-path-information
    locate -b '\$fipath' $fipath>>file-path-information
    echo"">>file-path-information
    echo"">>file-path-information
    sel15="15"
  echo ""
  echo "  Εάν θέλετε να αναζητήσετε κάποιο άλλο αρχείο πατήστε το 1 παρακάτω ή το οποιοδήποτε άλλο πλήκτρο για έξοδο"
   read check
   clear
while [ "$check" = "1" ] 
do
  echo "  Παρακάτω πληκρολογίστε κάποιο όνομα αρχείου προς αναζήτηση"
    read fipath
    echo"">>file-path-information
    echo"">>file-path-information
    locate -b '\$fipath'>>file-path-information
    echo"">>file-path-information
    echo"">>file-path-information
    echo ""
    echo "  Εάν θέλετε να αναζητήσετε κάποιο άλλο αρχείο πατήστε το 1 παρακάτω ή το οποιοδήποτε άλλο πλήκτρο για έξοδο"
       read check
done ##
#file road information
else
   if [ "$selection" = "16" ] || [ "$answer" = "16" ] ; then  
#realtime programm running information
    sudo pstree>programm-running-information
    sel16="16"
    clear  
#realtime programm running information

  

##########     
 fi #1
 fi #2
 fi #3
 fi #4
 fi #5
 fi #6
 fi #7
 fi #8
 fi #9
 fi #10
 fi #11
 fi #12
 fi #13
 fi #14
 fi #15
 fi #16
 #########
 
 selection="" #kill that var for not issues exist
 #check what done;
 if [ "$sel1" = "1" ] ; then 
    hxo1="    1.Eνημέρωση - Aναβάθμιση [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]" 
  else
    hxo1="    1.Eνημέρωση - Aναβάθμιση"
  fi
  
  if [ "$sel2" = "2" ] ; then 
     hxo2="   2.Θέλω τον καθαρισμό του συστήματος και τους παλαιούς πυρήνες [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo2="   2.Θέλω τον καθαρισμό του συστήματος και τους παλαιούς πυρήνες" 
  fi
   if [ "$sel3" = "3" ] ; then 
     hxo3="   3.Έχω πρόβλημα στο Τερματικό καθώς εκτελώ 'apt-get update' && 'apt-get upgrade' [ΕΚΤΕΛΕΣΤΗΚΕ Ανοίξτε το αρχείο καταγραφής για περισσότερες πληροφορίες των αποθετηρίων!]"
  else
     hxo3="   3.Έχω πρόβλημα στο Τερματικό καθώς εκτελώ 'apt-get update' && 'apt-get upgrade'" 
  fi  
  
  if [ "$sel4" = "4" ] ; then 
     hxo4="   4.Θέλω να δω τις αναλυτικές πληροφορίες του συστήματος μου [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo4="   4.Θέλω να δω τις αναλυτικές πληροφορίες του συστήματος μου" 
  fi  
  
  if [ "$sel5" = "5" ] ; then 
     hxo5="   5.Θέλω να δω ποιό είναι το μοντέλο της κάρτας γραφικών και ποιόν οδηγό(driver) χρησιμοποιεί [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo5="   5.Θέλω να δω ποιό είναι το μοντέλο της κάρτας γραφικών και ποιόν οδηγό(driver) χρησιμοποιεί" 
  fi  
  
  if [ "$sel6" = "6" ] ; then 
     hxo6="   6. Θέλω να δω πληροφορίες για την κάρτα του δικτύου και,τον οδηγό(driver) ο οποίος χρησιμοποιείται [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo6="   6. Θέλω να δω πληροφορίες για την κάρτα του δικτύου και,τον οδηγό(driver) ο οποίος χρησιμοποιείται" 
  fi 
  
  if [ "$sel7" = "7" ] ; then 
     hxo7="   7.Θέλω να δω πόσα GB έχει γράψει ο δίσκος (Χρήσιμο για σκληρούς δίσκους (πχ SSD) [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo7="   7.Θέλω να δω πόσα GB έχει γράψει ο δίσκος (Χρήσιμο για σκληρούς δίσκους (πχ SSD)" 
  fi   
  
  if [ "$sel8" = "8" ] ; then 
     hxo8="   8.Θέλω να δω τον αριθμό των πακέτων καθώς επίσης και των βιβλιοθηκών - εξαρτήσεων του συστήματος που είναι εγκατεστημένα [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo8="   8.Θέλω να δω τον αριθμό των πακέτων καθώς επίσης και των βιβλιοθηκών - εξαρτήσεων του συστήματος που είναι εγκατεστημένα" 
  fi 
  
  if [ "$sel9" = "9" ] ; then 
     hxo9="   9.Θέλω να δω τις πληροφορίες του επεξεργαστή CPU [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo9="   9.Θέλω να δω τις πληροφορίες του επεξεργαστή CPU" 
  fi  
  
  if [ "$sel10" = "10" ] ; then 
     hxo10="   10.Θέλω να δω τις πληροφορίες της μνήμης RAM και προβολή του μεγέθους της μνήμης σε gigabyte και την προβολή Swap που είναι σε χρήση [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo10="   10.Θέλω να δω τις πληροφορίες της μνήμης RAM και προβολή του μεγέθους της μνήμης σε gigabyte και την προβολή Swap που είναι σε χρήση" 
  fi  
  
  if [ "$sel11" = "11" ] ; then 
     hxo11="   11.Θέλω να δω τα διαμερίσματα που έχω στον δίσκο μου για το Ubuntu 'swap,home,boot κ.α' και τον χώρο που χρησιμοποιείται [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo11="   11.Θέλω να δω τα διαμερίσματα που έχω στον δίσκο μου για το Ubuntu 'swap,home,boot κ.α' και τον χώρο που χρησιμοποιείται" 
  fi   
  
    if [ "$sel12" = "12" ] ; then 
     hxo12="   12.Θέλω να δω τις πληροφορίες των pci/usb/audio/system drivers συσκευών [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo12="   12.Θέλω να δω τις πληροφορίες των pci/usb/audio/system drivers συσκευών" 
  fi  
  
    if [ "$sel13" = "13" ] ; then 
     hxo13="   13.Εμφάνιση των TCP/UDP port's [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo13="   13.Εμφάνιση των TCP/UDP port's" 
  fi  
 
    if [ "$sel14" = "14" ] ; then 
     hxo14="   14.Εμφάνιση των υπηρεσιών (services) του υπολογιστή [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo14="   14.Εμφάνιση των υπηρεσιών (services) του υπολογιστή" 
  fi   
  
    if [ "$sel15" = "15" ] ; then 
     hxo15="   15.Θέλω να βρώ κάποιο-α αρχείο-α καθώς και στον φάκελο τον οποίο βρίσκονται [ΕΚΤΕΛΕΣΤΗΚΕ τουλάχιστον πάνω από 1 φορά/ές ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo15="   15.Θέλω να βρώ κάποιο-α αρχείο-α καθώς και στον φάκελο τον οποίο βρίσκονται" 
  fi  

    if [ "$sel16" = "16" ] ; then 
     hxo16="   16.Θέλω να δω ποιά προγράμματα εκτελούνται αυτή την στιγμή και τις εξαρτήσεις τους [ΕΚΤΕΛΕΣΤΗΚΕ ανοίξτε στο αρχειο καταγράφης]"
  else
     hxo16="   16.Θέλω να δω ποιά προγράμματα εκτελούνται αυτή την στιγμή και τις εξαρτήσεις τους" 
  fi    
    clear 
    
 #end of check what done;   
 echo "" 
 echo "" 
 echo "Επιλέξτε αν θέλετε να κάνετε κάτι άλλο[πατήστε το πλήκτρο της επιλογής σας]"
 echo ""
 echo "$hxo1"
 echo ""
 echo "$hxo2"
 echo ""
 echo "$hxo3"
 echo ""
 echo "$hxo4"
 echo ""
 echo "$hxo5"
 echo ""
 echo "$hxo6"
 echo ""
 echo "$hxo7"
 echo ""
 echo "$hxo8"
 echo ""
 echo "$hxo9"
 echo ""
 echo "$hxo10"
 echo ""
 echo "$hxo11"
 echo ""
 echo "$hxo12"
 echo ""
 echo "$hxo13"
 echo ""
 echo "$hxo14"
 echo ""
 echo "$hxo15"
 echo ""
 echo "$hxo16"
 echo "" 
 echo "0.Έξοδος"
 echo ""
 echo "Πατήστε την επιλογή σας παρακάτω εάν θέλετε να συνεχίσεται ή 0 για έξοδο"
  read answer
  #check for correct entry 
 
while (("$answer" <= 0 )) || (("$answer" > 16 ))
 do
  
  if [ "$answer" = "0" ] ; then
     exit
  fi 
      clear
       echo "Έχετε δώσει λάθος εντολή.Παρακαλώ πληκτρολογήστε την σωστή επιλογή"
       echo ""
       echo "$hxo1"
       echo ""
       echo "$hxo2"
       echo ""
       echo "$hxo3"
       echo ""
       echo "$hxo4"
       echo ""
       echo "$hxo5"
       echo ""
       echo "$hxo6"
       echo ""
       echo "$hxo7"
       echo ""
       echo "$hxo8"
       echo ""
       echo "$hxo9"
       echo ""
       echo "$hxo10"
       echo ""
       echo "$hxo11"
       echo ""
       echo "$hxo12"
       echo ""
       echo "$hxo13"
       echo ""
       echo "$hxo14"
       echo ""
       echo "$hxo15"
       echo ""
       echo "$hxo16"
       echo "" 
       echo "0.Έξοδος"
       echo ""
       echo "Πατήστε την επιλογή σας παρακάτω εάν θέλετε να συνεχίσεται ή 0 για έξοδο"
        read answer
done #end of check correct entry          

done #end loop




