# A function that calls the _() function in gettext. This is because _ is protected in the puppet language
Puppet::Functions.create_function(:translate) do
  dispatch :translate do
    param 'String', :value
  end

  def translate(value)
    _(value)
  end
end
