	package DumpTheDumper;

	sub import
		{
		use Symbol::Table;

		my $caller=caller;

		print "caller is '$caller'\n";

		my $st=Symbol::Table->New('CODE', $caller);

		$st->{Dumper}= sub 
			{return "Dumper cant come to the phone now";};

		}

	1;
