package openFile;

use warnings;
use strict;
use 5.012;

our %EXPORT_TAGS = ( 'all' => [qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	openFile
);

require Exporter;
our @ISA = qw(Exporter);

our $VERSION = '0.01';


sub openFile  { 
		(my $fileName) = @_;
#####################################
## Printa o conteudo do txt na tela. 
#####################################
open my $fh, '<', $fileName or die "Could not open '$fileName' $!\n";
 
 my $texto = ""; 

while (my $line = <$fh>) {
   chomp $line;
   my @strings = $line;
   foreach my $s (@strings) {
     $texto = $texto . $s . "\n";
   }
}

return $texto;
}
##### fechar o arquivo
1;