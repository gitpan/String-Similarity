=head1 NAME

String::Similarity - calculate the similarity of two strings

=head1 SYNOPSIS

 use String::Similarity;

 $similarity = similarity $string1, $string2;

=head1 DESCRIPTION

=over 4

=cut

package String::Similarity;

require DynaLoader;

$VERSION = 0.01;
@ISA = qw/Exporter DynaLoader/;
@EXPORT = qw(similarity);
@EXPORT_OK = qw(fstrcmp);

bootstrap String::Similarity $VERSION;

=item $factor = similarity $string1, $string2

The C<similarity>-function calulcates the similarity index of its
two arguments.  A value of C<0> means that the strings are entirely
different. A value of C<1> means the strings are identical. Everything
else lies describes the amount of similarity between the strings.

It roughly works by looking at the smallest number of edits to change one
string into the other.

=cut

# out of historical reasons, I prefer "fstrcmp" as the original name.
*similarity = *fstrcmp;

1;

=back

=head1 SEE ALSO

 The basic algorithm is described in:
 "An O(ND) Difference Algorithm and its Variations", Eugene Myers,
 Algorithmica Vol. 1 No. 2, 1986, pp. 251-266;
 see especially section 4.2, which describes the variation used below.

 The basic algorithm was independently discovered as described in:
 "Algorithms for Approximate String Matching", E. Ukkonen,
 Information and Control Vol. 64, 1985, pp. 100-118.

=head1 AUTHOR

 Marc Lehmann <pcg@goof.com>
 http://www.goof.com/pcg/marc/

 (the underlying fstrcmp function was written by Peter Miller <pmiller@agso.gov.au>)



