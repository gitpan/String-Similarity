BEGIN { $| = 1; print "1..4\n"; }
END {print "not ok 1\n" unless $loaded;}
use String::Similarity;
$loaded = 1;
print "ok 1\n";

print similarity("this should be the same", "this should be the same") == 1 ? "" : "not ", "ok 2\n";
my $s = similarity("this should be same the", "this should be the same");
print $s > 0.825 && $s < 0.827 ? "" : "not ", "ok 3\n";
print similarity("A", "B") == 0 ? "" : "not ", "ok 4\n";

