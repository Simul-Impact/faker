defmodule Faker.Address.Fr do
  import Faker, only: [sampler: 2]

  alias Faker.Person.Fr, as: Person

  @moduledoc """
  Functions for generating addresses in French
  """

  @doc """
  Return random building number.

  ## Examples

      iex> Faker.Address.Fr.building_number()
      "15426"
      iex> Faker.Address.Fr.building_number()
      "6"
      iex> Faker.Address.Fr.building_number()
      "0832"
      iex> Faker.Address.Fr.building_number()
      "7"
  """
  @spec building_number() :: String.t()
  def building_number do
    ["###", "##", "#"]
    |> Enum.at(Faker.random_between(0, 4))
    |> Faker.format()
  end

  @doc """
  Return city name.

  ## Examples

      iex> Faker.Address.Fr.city()
      "Elizabeth"
      iex> Faker.Address.Fr.city()
      "Rolfson"
      iex> Faker.Address.Fr.city()
      "West Conor"
      iex> Faker.Address.Fr.city()
      "Hardy"
  """
  @spec city() :: String.t()
  def city do
    city(Faker.random_between(0, 3))
  end

  defp city(0), do: "#{city_prefix()} #{Person.first_name()}"
  defp city(1), do: "#{city_prefix()} #{Person.first_name()} #{city_suffix()}"
  defp city(2), do: "#{Person.first_name()} #{city_suffix()}"
  defp city(3), do: "#{Person.last_name()}"

  @doc """
  Return city prefix.

  ## Examples

      iex> Faker.Address.Fr.city_prefix()
      "Port"
      iex> Faker.Address.Fr.city_prefix()
      "West"
      iex> Faker.Address.Fr.city_prefix()
      "North"
      iex> Faker.Address.Fr.city_prefix()
      "Lake"
  """
  @spec city_prefix() :: String.t()
  sampler(:city_prefix, [
    "Port",
    "Saint"
  ])

  @doc """
  Return city suffix.

  ## Examples

      iex> Faker.Address.Fr.city_suffix()
      "burgh"
      iex> Faker.Address.Fr.city_suffix()
      "mouth"
      iex> Faker.Address.Fr.city_suffix()
      "burgh"
      iex> Faker.Address.Fr.city_suffix()
      "view"
  """
  @spec city_suffix() :: String.t()
  sampler(:city_suffix, [
    "sur mer",
    "du peuple",
    "sur loire"
  ])

  @doc """
  Return country.

  ## Examples

      iex> Faker.Address.Fr.country()
      "Guinea-Bissau"
      iex> Faker.Address.Fr.country()
      "Tuvalu"
      iex> Faker.Address.Fr.country()
      "Portugal"
      iex> Faker.Address.Fr.country()
      "United Arab Emirates"
  """
  @spec country() :: String.t()
  sampler(:country, [
    "Afghanistan",
    "Albanie",
    "Antarctique",
    "Algérie",
    "Samoa Américaines",
    "Andorre",
    "Angola",
    "Antigua-et-Barbuda",
    "Azerbaïdjan",
    "Argentine",
    "Australie",
    "Autriche",
    "Bahamas",
    "Bahreïn",
    "Bangladesh",
    "Arménie",
    "Barbade",
    "Belgique",
    "Bermudes",
    "Bhoutan",
    "Bolivie",
    "Bosnie-Herzégovine",
    "Botswana",
    "Île Bouvet",
    "Brésil",
    "Belize",
    "Territoire Britannique de l'Océan Indien",
    "Îles Salomon",
    "Îles Vierges Britanniques",
    "Brunéi Darussalam",
    "Bulgarie",
    "Myanmar",
    "Burundi",
    "Bélarus",
    "Cambodge",
    "Cameroun",
    "Canada",
    "Cap-vert",
    "Îles Caïmanes",
    "République Centrafricaine",
    "Sri Lanka",
    "Tchad",
    "Chili",
    "Chine",
    "Taïwan",
    "Îe Christmas",
    "Îles Cocos (Keeling)",
    "Colombie",
    "Comores",
    "Mayotte",
    "République du Congo",
    "République Démocratique du Congo",
    "Îles Cook",
    "Costa Rica",
    "Croatie",
    "Cuba",
    "Chypre",
    "République Tchèque",
    "Bénin",
    "Danemark",
    "Dominique",
    "République Dominicaine",
    "Équateur",
    "El Salvador",
    "Guinée Équatoriale",
    "Éthiopie",
    "Érythrée",
    "Estonie",
    "Îles Féroé",
    "Îles (malvinas) Falkland",
    "Géorgie du Sud et les ïles Sandwich du Sud",
    "Fidji",
    "Finlande",
    "Ïles Åland",
    "France",
    "Guyane FranÃ§aise",
    "Polynésie Française",
    "Terres Australes Françaises",
    "Djibouti",
    "Gabon",
    "Géorgie",
    "Gambie",
    "Allemagne",
    "Ghana",
    "Gibraltar",
    "Kiribati",
    "Grèce",
    "Groenland",
    "Grenade",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guinée",
    "Guyana",
    "Haïti",
    "Ïles Heard et Mcdonald",
    "Saint-Siège (État de la Cité du Vatican)",
    "Honduras",
    "Hong-Kong",
    "Hongrie",
    "Islande",
    "Inde",
    "Indonésie",
    "République Islamique d'Iran",
    "Iraq",
    "Irlande",
    "Israël",
    "Italie",
    "Côte d'Ivoire",
    "Jamaïque",
    "Japon",
    "Kazakhstan",
    "Jordanie",
    "Kenya",
    "République Populaire Démocratique de Corée",
    "République de Corée",
    "Koweït",
    "Kirghizistan",
    "République Démocratique Populaire Lao",
    "Liban",
    "Lesotho",
    "Lettonie",
    "Libéria",
    "Jamahiriya Arabe Libyenne",
    "Liechtenstein",
    "Lituanie",
    "Luxembourg",
    "Macao",
    "Madagascar",
    "Malawi",
    "Malaisie",
    "Maldives",
    "Mali",
    "Malte",
    "Martinique",
    "Mauritanie",
    "Maurice",
    "Mexique",
    "Monaco",
    "Mongolie",
    "République de Moldova",
    "Montserrat",
    "Maroc",
    "Mozambique",
    "Oman",
    "Namibie",
    "Nauru",
    "Népal",
    "Pays-Bas",
    "Antilles Néerlandaises",
    "Aruba",
    "Nouvelle-Calédonie",
    "Vanuatu",
    "Nouvelle-Zélande",
    "Nicaragua",
    "Niger",
    "Nigéria",
    "Niué",
    "Ïle Norfolk",
    "Norvège",
    "Îles Mariannes du Nord",
    "Îles Mineures Éloignées des États-Unis",
    "États Fédérés de Micronésie",
    "Îles Marshall",
    "Palaos",
    "Pakistan",
    "Panama",
    "Papouasie-Nouvelle-Guinée",
    "Paraguay",
    "Pérou",
    "Philippines",
    "Pitcairn",
    "Pologne",
    "Portugal",
    "Guinée-Bissau",
    "Timor-Leste",
    "Porto Rico",
    "Qatar",
    "Réunion",
    "Roumanie",
    "Fédération de Russie",
    "Rwanda",
    "Sainte-Hélène",
    "Saint-Kitts-et-Nevis",
    "Anguilla",
    "Sainte-Lucie",
    "Saint-Pierre-et-Miquelon",
    "Saint-Vincent-et-les Grenadines",
    "Saint-Marin",
    "Sao Tomé-et-Principe",
    "Arabie Saoudite",
    "Sénégal",
    "Seychelles",
    "Sierra Leone",
    "Singapour",
    "Slovaquie",
    "Viet Nam",
    "Slovénie",
    "Somalie",
    "Afrique du Sud",
    "Zimbabwe",
    "Espagne",
    "Sahara Occidental",
    "Soudan",
    "Suriname",
    "Svalbard et Île Jan Mayen",
    "Swaziland",
    "Suède",
    "Suisse",
    "République Arabe Syrienne",
    "Tadjikistan",
    "Thaïlande",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinité-et-Tobago",
    "Émirats Arabes Unis",
    "Tunisie",
    "Turquie",
    "Turkménistan",
    "Îles Turks et Caïques",
    "Tuvalu",
    "Ouganda",
    "Ukraine",
    "L'ex-République Yougoslave de Macédoine",
    "Égypte",
    "Royaume-Uni",
    "Île de Man",
    "République-Unie de Tanzanie",
    "États-Unis",
    "Îles Vierges des États-Unis",
    "Burkina Faso",
    "Uruguay",
    "Ouzbékistan",
    "Venezuela",
    "Wallis et Futuna",
    "Samoa",
    "Yémen",
    "Serbie-et-Monténégro",
    "Zambie"
  ])

  @doc """
  Return country code.

  ## Examples

      iex> Faker.Address.Fr.country_code()
      "FR"
  """
  @spec country_code() :: String.t()
  sampler(:country_code, ["FR"])

  @doc """
  Return state. But France doesn't have states so this calls Faker.Address.Fr.region() instead.
  """
  @spec state() :: String.t()
  def state, do: region()

  @doc """
  Return region.[Source]()

  ## Examples

      iex> Faker.Address.Fr.region()
      "Extremadura"
      iex> Faker.Address.Fr.region()
      "Aragón"
      iex> Faker.Address.Fr.region()
      "País Vasco"
      iex> Faker.Address.Fr.region()
      "Canarias"
  """

  @spec region() :: String.t()
  sampler(:region, [])

  @doc """
  Return random postcode.

  ## Examples

      iex> Faker.Address.Fr.zip_code()
      "01542"
      iex> Faker.Address.Fr.zip_code()
      "64610"
      iex> Faker.Address.Fr.zip_code()
      "83297"
      iex> Faker.Address.Fr.zip_code()
      "05235"
  """
  @spec zip_code() :: String.t()
  def zip_code do
    ["#####"]
    |> Enum.at(0)
    |> Faker.format()
  end
end
