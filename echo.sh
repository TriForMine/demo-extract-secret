perl -e 'print "$_\n" for split //, $ENV{CONFIDENTIAL_ENV_VAR} // ""'
