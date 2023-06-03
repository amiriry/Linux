parameters=($@)

comparestring="if "
i=0
end=$(echo "${parameters[@]}" | wc -w)
end=$(($end - 1))

for w in "${parameters[@]}"
do
	if [ $i != $end ]
	then
		comparestring="${comparestring} [ \"${parameters[$i]}\" == \"${parameters[$i+1]}\" ] &&"
	fi
	i=$(($i + 1))
done

comparestring=$(echo $comparestring | rev | sed 's/&& //' | rev)
comparestring="${comparestring};then echo OK;else echo NOT!!!!!!!!!;fi"
echo $comparestring
eval "${comparestring}"
