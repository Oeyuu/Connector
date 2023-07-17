#!/bin/bash

bootstrap_servers="$1"

# Liste aller Kafka-Topics abrufen
topics=$(kafka-topics.sh --list --bootstrap-server $bootstrap_servers --command-config /projects/teclify/training/iam.properties)

# Trennzeichen für den resultierenden String
delimiter=","

# Array initialisieren, um die gewünschten Topics zu speichern
desired_topics=()

# Schleife durch alle Topics
for topic in $topics
do
    # Überprüfen, ob das Topic "__amazon_msk_canary" ist
    if [[ $topic != *"__amazon_msk_canary"* ]]
    then
        # Topic zur Liste der gewünschten Topics hinzufügen
        desired_topics+=("$topic")
    fi
done

# Gewünschte Topics zu einem String zusammenführen
topics_string=$(IFS=$delimiter; echo "${desired_topics[*]}")

# Ausgabe des resultierenden Topics-Strings als JSON
echo "{\"output\": \"$topics_string\"}"
