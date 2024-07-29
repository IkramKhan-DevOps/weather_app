final Map<String, Map<String, String>> countryToCityAndContinent = {
  'Afghanistan': {
    'continent': 'Asia',
    'city': 'Kabul'
  }, // Afghanistan Standard Time
  'Albania': {'continent': 'Europe', 'city': 'Tirane'}, // Central European Time
  'Algeria': {
    'continent': 'Africa',
    'city': 'Algiers'
  }, // Central European Time
  'Andorra': {
    'continent': 'Europe',
    'city': 'Andorra'
  }, // Central European Time
  'Angola': {'continent': 'Africa', 'city': 'Luanda'}, // West Africa Time
  'Argentina': {
    'continent': 'America',
    'city': 'Buenos_Aires'
  }, // Argentina Time
  'Armenia': {'continent': 'Asia', 'city': 'Yerevan'}, // Armenia Time
  'Australia': {
    'continent': 'Australia',
    'city': 'Sydney'
  }, // Australian Eastern Time
  'Austria': {'continent': 'Europe', 'city': 'Vienna'}, // Central European Time
  'Azerbaijan': {'continent': 'Asia', 'city': 'Baku'}, // Azerbaijan Time
  'Bahamas': {'continent': 'America', 'city': 'Nassau'}, // Eastern Time
  'Bahrain': {'continent': 'Asia', 'city': 'Manama'}, // Arabian Time
  'Bangladesh': {'continent': 'Asia', 'city': 'Dhaka'}, // Bangladesh Time
  'Barbados': {'continent': 'America', 'city': 'Bridgetown'}, // Atlantic Time
  'Belarus': {'continent': 'Europe', 'city': 'Minsk'}, // Moscow Time
  'Belgium': {
    'continent': 'Europe',
    'city': 'Brussels'
  }, // Central European Time
  'Belize': {'continent': 'America', 'city': 'Belize'}, // Central Time
  'Benin': {'continent': 'Africa', 'city': 'Porto-Novo'}, // West Africa Time
  'Bhutan': {'continent': 'Asia', 'city': 'Thimphu'}, // Bhutan Time
  'Bolivia': {'continent': 'America', 'city': 'La_Paz'}, // Bolivia Time
  'Bosnia and Herzegovina': {
    'continent': 'Europe',
    'city': 'Sarajevo'
  }, // Central European Time
  'Botswana': {
    'continent': 'Africa',
    'city': 'Gaborone'
  }, // Central Africa Time
  'Brazil': {'continent': 'America', 'city': 'Sao_Paulo'}, // Brasilia Time
  'Brunei': {'continent': 'Asia', 'city': 'Bandar_Seri_Begawan'}, // Brunei Time
  'Bulgaria': {'continent': 'Europe', 'city': 'Sofia'}, // Eastern European Time
  'Burkina Faso': {
    'continent': 'Africa',
    'city': 'Ouagadougou'
  }, // Greenwich Mean Time
  'Burundi': {
    'continent': 'Africa',
    'city': 'Bujumbura'
  }, // Central Africa Time
  'Cabo Verde': {'continent': 'Atlantic', 'city': 'Praia'}, // Cape Verde Time
  'Cambodia': {'continent': 'Asia', 'city': 'Phnom_Penh'}, // Indochina Time
  'Cameroon': {'continent': 'Africa', 'city': 'Douala'}, // West Africa Time
  'Canada': {'continent': 'America', 'city': 'Toronto'}, // Eastern Time
  'Central African Republic': {
    'continent': 'Africa',
    'city': 'Bangui'
  }, // West Africa Time
  'Chad': {'continent': 'Africa', 'city': 'N\'Djamena'}, // West Africa Time
  'Chile': {'continent': 'America', 'city': 'Santiago'}, // Chile Time
  'China': {'continent': 'Asia', 'city': 'Shanghai'}, // China Time
  'Colombia': {'continent': 'America', 'city': 'Bogota'}, // Colombia Time
  'Comoros': {'continent': 'Africa', 'city': 'Moroni'}, // East Africa Time
  'Congo': {'continent': 'Africa', 'city': 'Brazzaville'}, // West Africa Time
  'Costa Rica': {'continent': 'America', 'city': 'San_Jose'}, // Central Time
  'Croatia': {'continent': 'Europe', 'city': 'Zagreb'}, // Central European Time
  'Cuba': {'continent': 'America', 'city': 'Havana'}, // Cuba Time
  'Cyprus': {'continent': 'Asia', 'city': 'Nicosia'}, // Eastern European Time
  'Czech Republic': {
    'continent': 'Europe',
    'city': 'Prague'
  }, // Central European Time
  'Denmark': {
    'continent': 'Europe',
    'city': 'Copenhagen'
  }, // Central European Time
  'Djibouti': {'continent': 'Africa', 'city': 'Djibouti'}, // East Africa Time
  'Dominica': {'continent': 'America', 'city': 'Roseau'}, // Atlantic Time
  'Dominican Republic': {
    'continent': 'America',
    'city': 'Santo_Domingo'
  }, // Atlantic Time
  'Ecuador': {'continent': 'America', 'city': 'Guayaquil'}, // Ecuador Time
  'Egypt': {'continent': 'Africa', 'city': 'Cairo'}, // Eastern European Time
  'El Salvador': {
    'continent': 'America',
    'city': 'San_Salvador'
  }, // Central Time
  'Equatorial Guinea': {
    'continent': 'Africa',
    'city': 'Malabo'
  }, // West Africa Time
  'Eritrea': {'continent': 'Africa', 'city': 'Asmara'}, // East Africa Time
  'Estonia': {
    'continent': 'Europe',
    'city': 'Tallinn'
  }, // Eastern European Time
  'Eswatini': {
    'continent': 'Africa',
    'city': 'Mbabane'
  }, // South Africa Standard Time
  'Ethiopia': {
    'continent': 'Africa',
    'city': 'Addis_Ababa'
  }, // East Africa Time
  'Fiji': {'continent': 'Pacific', 'city': 'Suva'}, // Fiji Time
  'Finland': {
    'continent': 'Europe',
    'city': 'Helsinki'
  }, // Eastern European Time
  'France': {'continent': 'Europe', 'city': 'Paris'}, // Central European Time
  'Gabon': {'continent': 'Africa', 'city': 'Libreville'}, // West Africa Time
  'Gambia': {'continent': 'Africa', 'city': 'Banjul'}, // Greenwich Mean Time
  'Georgia': {'continent': 'Asia', 'city': 'Tbilisi'}, // Georgia Standard Time
  'Germany': {'continent': 'Europe', 'city': 'Berlin'}, // Central European Time
  'Ghana': {'continent': 'Africa', 'city': 'Accra'}, // Greenwich Mean Time
  'Greece': {'continent': 'Europe', 'city': 'Athens'}, // Eastern European Time
  'Grenada': {'continent': 'America', 'city': 'St_George\'s'}, // Atlantic Time
  'Guatemala': {
    'continent': 'America',
    'city': 'Guatemala_City'
  }, // Central Time
  'Guinea': {'continent': 'Africa', 'city': 'Conakry'}, // Greenwich Mean Time
  'Guinea-Bissau': {
    'continent': 'Africa',
    'city': 'Bissau'
  }, // Greenwich Mean Time
  'Guyana': {'continent': 'America', 'city': 'Georgetown'}, // Guyana Time
  'Haiti': {'continent': 'America', 'city': 'Port-au-Prince'}, // Eastern Time
  'Honduras': {'continent': 'America', 'city': 'Tegucigalpa'}, // Central Time
  'Hungary': {
    'continent': 'Europe',
    'city': 'Budapest'
  }, // Central European Time
  'Iceland': {
    'continent': 'Atlantic',
    'city': 'Reykjavik'
  }, // Greenwich Mean Time
  'India': {'continent': 'Asia', 'city': 'Kolkata'}, // India Standard Time
  'Indonesia': {
    'continent': 'Asia',
    'city': 'Jakarta'
  }, // Western Indonesia Time
  'Iran': {'continent': 'Asia', 'city': 'Tehran'}, // Iran Standard Time
  'Iraq': {'continent': 'Asia', 'city': 'Baghdad'}, // Arabian Time
  'Ireland': {'continent': 'Europe', 'city': 'Dublin'}, // Greenwich Mean Time
  'Israel': {'continent': 'Asia', 'city': 'Jerusalem'}, // Israel Standard Time
  'Italy': {'continent': 'Europe', 'city': 'Rome'}, // Central European Time
  'Jamaica': {'continent': 'America', 'city': 'Kingston'}, // Eastern Time
  'Japan': {'continent': 'Asia', 'city': 'Tokyo'}, // Japan Time
  'Jordan': {'continent': 'Asia', 'city': 'Amman'}, // Eastern European Time
  'Kazakhstan': {'continent': 'Asia', 'city': 'Almaty'}, // Alma-Ata Time
  'Kenya': {'continent': 'Africa', 'city': 'Nairobi'}, // East Africa Time
  'Kiribati': {
    'continent': 'Pacific',
    'city': 'Tarawa'
  }, // Gilbert Islands Time
  'Kuwait': {'continent': 'Asia', 'city': 'Kuwait'}, // Arabian Time
  'Kyrgyzstan': {'continent': 'Asia', 'city': 'Bishkek'}, // Kyrgyzstan Time
  'Laos': {'continent': 'Asia', 'city': 'Vientiane'}, // Indochina Time
  'Latvia': {'continent': 'Europe', 'city': 'Riga'}, // Eastern European Time
  'Lebanon': {'continent': 'Asia', 'city': 'Beirut'}, // Eastern European Time
  'Lesotho': {
    'continent': 'Africa',
    'city': 'Maseru'
  }, // South Africa Standard Time
  'Liberia': {'continent': 'Africa', 'city': 'Monrovia'}, // Greenwich Mean Time
  'Libya': {'continent': 'Africa', 'city': 'Tripoli'}, // Eastern European Time
  'Liechtenstein': {
    'continent': 'Europe',
    'city': 'Vaduz'
  }, // Central European Time
  'Lithuania': {
    'continent': 'Europe',
    'city': 'Vilnius'
  }, // Eastern European Time
  'Luxembourg': {
    'continent': 'Europe',
    'city': 'Luxembourg'
  }, // Central European Time
  'Madagascar': {
    'continent': 'Africa',
    'city': 'Antananarivo'
  }, // East Africa Time
  'Malawi': {'continent': 'Africa', 'city': 'Lilongwe'}, // Central Africa Time
  'Malaysia': {'continent': 'Asia', 'city': 'Kuala_Lumpur'}, // Malaysia Time
  'Maldives': {'continent': 'Asia', 'city': 'Malé'}, // Maldives Time
  'Mali': {'continent': 'Africa', 'city': 'Bamako'}, // Greenwich Mean Time
  'Malta': {'continent': 'Europe', 'city': 'Valletta'}, // Central European Time
  'Marshall Islands': {
    'continent': 'Pacific',
    'city': 'Majuro'
  }, // Marshall Islands Time
  'Mauritania': {
    'continent': 'Africa',
    'city': 'Nouakchott'
  }, // Greenwich Mean Time
  'Mauritius': {'continent': 'Africa', 'city': 'Port_Louis'}, // Mauritius Time
  'Mexico': {'continent': 'America', 'city': 'Mexico_City'}, // Central Time
  'Micronesia': {'continent': 'Pacific', 'city': 'Palikir'}, // Pohnpei Time
  'Moldova': {
    'continent': 'Europe',
    'city': 'Chisinau'
  }, // Eastern European Time
  'Monaco': {'continent': 'Europe', 'city': 'Monaco'}, // Central European Time
  'Mongolia': {'continent': 'Asia', 'city': 'Ulaanbaatar'}, // Ulaanbaatar Time
  'Montenegro': {
    'continent': 'Europe',
    'city': 'Podgorica'
  }, // Central European Time
  'Morocco': {
    'continent': 'Africa',
    'city': 'Casablanca'
  }, // Western European Time
  'Mozambique': {
    'continent': 'Africa',
    'city': 'Maputo'
  }, // Central Africa Time
  'Myanmar': {'continent': 'Asia', 'city': 'Yangon'}, // Myanmar Time
  'Namibia': {'continent': 'Africa', 'city': 'Windhoek'}, // Central Africa Time
  'Nauru': {'continent': 'Pacific', 'city': 'Yaren'}, // Nauru Time
  'Nepal': {'continent': 'Asia', 'city': 'Kathmandu'}, // Nepal Time
  'Netherlands': {
    'continent': 'Europe',
    'city': 'Amsterdam'
  }, // Central European Time
  'New Zealand': {
    'continent': 'Pacific',
    'city': 'Wellington'
  }, // New Zealand Time
  'Nicaragua': {'continent': 'America', 'city': 'Managua'}, // Central Time
  'Niger': {'continent': 'Africa', 'city': 'Niamey'}, // West Africa Time
  'Nigeria': {'continent': 'Africa', 'city': 'Lagos'}, // West Africa Time
  'North Korea': {
    'continent': 'Asia',
    'city': 'Pyongyang'
  }, // Korea Standard Time
  'North Macedonia': {
    'continent': 'Europe',
    'city': 'Skopje'
  }, // Central European Time
  'Norway': {'continent': 'Europe', 'city': 'Oslo'}, // Central European Time
  'Oman': {'continent': 'Asia', 'city': 'Muscat'}, // Arabian Time
  'Pakistan': {'continent': 'Asia', 'city': 'Karachi'}, // Pakistan Time
  'Palau': {'continent': 'Pacific', 'city': 'Ngerulmud'}, // Palau Time
  'Palestine': {
    'continent': 'Asia',
    'city': 'Ramallah'
  }, // Eastern European Time
  'Panama': {'continent': 'America', 'city': 'Panama'}, // Eastern Time
  'Papua New Guinea': {
    'continent': 'Pacific',
    'city': 'Port_Moresby'
  }, // Papua New Guinea Time
  'Paraguay': {'continent': 'America', 'city': 'Asuncion'}, // Paraguay Time
  'Peru': {'continent': 'America', 'city': 'Lima'}, // Peru Time
  'Philippines': {'continent': 'Asia', 'city': 'Manila'}, // Philippines Time
  'Poland': {'continent': 'Europe', 'city': 'Warsaw'}, // Central European Time
  'Portugal': {
    'continent': 'Europe',
    'city': 'Lisbon'
  }, // Western European Time
  'Qatar': {'continent': 'Asia', 'city': 'Doha'}, // Arabian Time
  'Republic of the Congo': {
    'continent': 'Africa',
    'city': 'Brazzaville'
  }, // West Africa Time
  'Romania': {
    'continent': 'Europe',
    'city': 'Bucharest'
  }, // Eastern European Time
  'Russia': {'continent': 'Europe', 'city': 'Moscow'}, // Moscow Time
  'Rwanda': {'continent': 'Africa', 'city': 'Kigali'}, // Central Africa Time
  'Saint Kitts and Nevis': {
    'continent': 'America',
    'city': 'Basseterre'
  }, // Atlantic Time
  'Saint Lucia': {'continent': 'America', 'city': 'Castries'}, // Atlantic Time
  'Saint Vincent and the Grenadines': {
    'continent': 'America',
    'city': 'Kingstown'
  }, // Atlantic Time
  'Samoa': {'continent': 'Pacific', 'city': 'Apia'}, // Samoa Time
  'San Marino': {
    'continent': 'Europe',
    'city': 'San_Marino'
  }, // Central European Time
  'Sao Tome and Principe': {
    'continent': 'Africa',
    'city': 'Sao_Tome'
  }, // Greenwich Mean Time
  'Saudi Arabia': {'continent': 'Asia', 'city': 'Riyadh'}, // Arabian Time
  'Senegal': {'continent': 'Africa', 'city': 'Dakar'}, // Greenwich Mean Time
  'Serbia': {
    'continent': 'Europe',
    'city': 'Belgrade'
  }, // Central European Time
  'Seychelles': {'continent': 'Africa', 'city': 'Victoria'}, // Seychelles Time
  'Sierra Leone': {
    'continent': 'Africa',
    'city': 'Freetown'
  }, // Greenwich Mean Time
  'Singapore': {'continent': 'Asia', 'city': 'Singapore'}, // Singapore Time
  'Slovakia': {
    'continent': 'Europe',
    'city': 'Bratislava'
  }, // Central European Time
  'Slovenia': {
    'continent': 'Europe',
    'city': 'Ljubljana'
  }, // Central European Time
  'Solomon Islands': {
    'continent': 'Pacific',
    'city': 'Honiara'
  }, // Solomon Islands Time
  'Somalia': {'continent': 'Africa', 'city': 'Mogadishu'}, // East Africa Time
  'South Africa': {
    'continent': 'Africa',
    'city': 'Johannesburg'
  }, // South Africa Standard Time
  'South Korea': {'continent': 'Asia', 'city': 'Seoul'}, // Korea Standard Time
  'South Sudan': {'continent': 'Africa', 'city': 'Juba'}, // Central Africa Time
  'Spain': {'continent': 'Europe', 'city': 'Madrid'}, // Central European Time
  'Sri Lanka': {'continent': 'Asia', 'city': 'Colombo'}, // Sri Lanka Time
  'Sudan': {'continent': 'Africa', 'city': 'Khartoum'}, // Central Africa Time
  'Suriname': {'continent': 'America', 'city': 'Paramaribo'}, // Suriname Time
  'Sweden': {
    'continent': 'Europe',
    'city': 'Stockholm'
  }, // Central European Time
  'Switzerland': {
    'continent': 'Europe',
    'city': 'Zurich'
  }, // Central European Time
  'Syria': {'continent': 'Asia', 'city': 'Damascus'}, // Eastern European Time
  'Taiwan': {'continent': 'Asia', 'city': 'Taipei'}, // China Time
  'Tajikistan': {'continent': 'Asia', 'city': 'Dushanbe'}, // Tajikistan Time
  'Tanzania': {
    'continent': 'Africa',
    'city': 'Dar_es_Salaam'
  }, // East Africa Time
  'Thailand': {'continent': 'Asia', 'city': 'Bangkok'}, // Indochina Time
  'Timor-Leste': {'continent': 'Asia', 'city': 'Dili'}, // East Timor Time
  'Togo': {'continent': 'Africa', 'city': 'Lome'}, // Greenwich Mean Time
  'Tonga': {'continent': 'Pacific', 'city': 'Nuku_alofa'}, // Tonga Time
  'Trinidad and Tobago': {
    'continent': 'America',
    'city': 'Port_of_Spain'
  }, // Atlantic Time
  'Tunisia': {'continent': 'Africa', 'city': 'Tunis'}, // Central European Time
  'Turkey': {'continent': 'Europe', 'city': 'Istanbul'}, // Turkey Time
  'Turkmenistan': {
    'continent': 'Asia',
    'city': 'Ashgabat'
  }, // Turkmenistan Time
  'Tuvalu': {'continent': 'Pacific', 'city': 'Funafuti'}, // Tuvalu Time
  'Uganda': {'continent': 'Africa', 'city': 'Kampala'}, // East Africa Time
  'Ukraine': {'continent': 'Europe', 'city': 'Kyiv'}, // Eastern European Time
  'United Arab Emirates': {
    'continent': 'Asia',
    'city': 'Abu_Dhabi'
  }, // Gulf Time
  'United Kingdom': {
    'continent': 'Europe',
    'city': 'London'
  }, // Greenwich Mean Time
  'United States': {'continent': 'America', 'city': 'New_York'}, // Eastern Time
  'Uruguay': {'continent': 'America', 'city': 'Montevideo'}, // Uruguay Time
  'Uzbekistan': {'continent': 'Asia', 'city': 'Tashkent'}, // Uzbekistan Time
  'Vanuatu': {'continent': 'Pacific', 'city': 'Port_Vila'}, // Vanuatu Time
  'Vatican City': {
    'continent': 'Europe',
    'city': 'Vatican'
  }, // Central European Time
  'Venezuela': {'continent': 'America', 'city': 'Caracas'}, // Venezuela Time
  'Vietnam': {'continent': 'Asia', 'city': 'Hanoi'}, // Indochina Time
  'Yemen': {'continent': 'Asia', 'city': 'Sanaa'}, // Arabian Time
  'Zambia': {'continent': 'Africa', 'city': 'Lusaka'}, // Central Africa Time
  'Zimbabwe': {'continent': 'Africa', 'city': 'Harare'}, // Central Africa Time
};
