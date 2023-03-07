path="../"
woo_template="$path/templates/woocommerce"

# echo "" > "$path/phpcs-log.txt";

for singlepath in "$path/includes/modules/*/**.php"
do
    ./vendor/bin/phpcs --standard=ruleset.xml ${singlepath}
done



if [[ -d ${woo_template} ]]
then
	for template_path in "$woo_template/*/**.php"
	do 
		./vendor/bin/phpcs --standard=ruleset.xml ${template_path}
	done
fi 

echo 'all done'
exit
