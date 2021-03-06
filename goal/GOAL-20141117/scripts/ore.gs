#!./goal batch

if $1 == "-h" || $1 == "--help" then
  echo "Usage: ore.gs [STATE_SIZE PROP_SIZE TRAN_DENSITY ACC_DENSITY ]";
  exit;
fi

echo "Check the correctness of the translation of omega-regular expressions.";
echo;

if $1 == null then
  $state_size = 4;
else
  $state_size = $1;
fi
if $2 == null then
  $prop_size = 2;
else
  $prop_size = $2;
fi
if $3 == null then
  $dt = 1.0;
else
  $dt = $3;
fi
if $4 == null then
  $da = 0.5;
else
  $da = $4;
fi

$count = 0;
$eq = 1;
while $eq do
  echo "#" + $count + ": ";
  echo -n "  Generating an NBW: ";
  $o = generate -t FSA -a NBW -A classical -m density -s $state_size -n $prop_size -dt $dt -da $da;
  ($s, $t) = stat $o;
  echo $s + ", " + $t;
  
  echo -n "  Converting NBW -> ORE: ";
  $ore = convert -t ore $o;
  echo $ore;
  
  echo -n "  Translating ORE -> NBW: ";
  $o2 = translate ore -se -sa $ore;
  ($s, $t) = stat $o2;
  echo $s + ", " + $t;
  
  echo -n "  Checking equivalence: ";
  $equiv = equivalence $o $o2;
  echo $equiv;
  
  if !$equiv then
    $eq = 0;
    echo "Counterexample found!";
    echo "";
    echo $o;
  fi

  $count = $count + 1;
done
