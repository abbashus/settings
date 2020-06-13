alias gb="git branch"
alias gs="git status"
alias gl="git log -1"
alias gll="git log -1"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# to clean elasticsearch plugin directory
alias cpd="rm -rf *.txt *.jar *.zip *.properties"

alias myinit="ssh-add -D && mwinit && ssh-add " #&& mydev 'kinit -f' && clr"

copy_and_start() {
	cd /Users/abbashus/opendistro-fork/sql
	echo "Inside sql github root folder..."
	./gradlew clean && ./gradlew assemble
	echo "gradle build done ..."
	cd /Users/abbashus/elasticsearch/elasticsearch-oss-7.6.1/plugins/sql
	echo "Into sql plugin directory..."
	rm -rf *.txt *.jar *.zip *.properties
	echo "Removed all previous files..."
	cp /Users/abbashus/opendistro-fork/sql/build/distributions/opendistro_sql-1.6.0.0.zip opendistro_sql-1.6.0.0.zip
	echo "Copied zip file..."
	unzip opendistro_sql-1.6.0.0.zip
	echo "unzipped..."
	cd /Users/abbashus/elasticsearch/elasticsearch-oss-7.6.1
	echo "Back to Elasticsearch home directory.."
	echo "Starting Elasticsearch.."
	bin/elasticsearch
}


dump_region_code_name_table() {
    echo "IAD | us-east-1      | North Viginia, Washington Dulles"
    echo "CMH | us-east-2      | Ohio, Columbus"
    echo "SFO | us-west-1      | San Francisco"
    echo "PDX | us-west-2      | Portland, Oregan"
    echo "PDT | us-gov-west-1  | US Government"
    echo "BOM | ap-south-1     | Mumbai, India"
    echo "NRT | ap-northeast-1 | Tokyo, Japan"
    echo "ICN | ap-northeast-2 | Seoul, South Korean"
    echo "SIN | ap-southeast-1 | Singapore"
    echo "SYD | ap-southeast-2 | Sydney, Canada"
    echo "YUL | ca-central-1   | Montreal, Canada"
    echo "FRA | eu-central-1   | Frankfurt, Germany"
    echo "DUB | eu-west-1      | Dublin, Ireland"
    echo "LHR | eu-west-2      | London, England"
    echo "GRU | sa-east-1      | Sao Paulo, Brazil"
    echo "ZHY | cn-northwest-1 | , China"
    echo "CDG | eu-west-3      | , Paris"
}

alias regions="dump_region_code_name_table"


alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
alias j13="export JAVA_HOME=`/usr/libexec/java_home -v 13`; java -version"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
