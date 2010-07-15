require 'helper'

class TestThermoMsf < Test::Unit::TestCase
  context "Given that I am trying to load this library" do
    should "Pass a canary test" do
      assert true, "The canary is dead, get out now!"
    end
  end

  context "Give an example Thermo MSF file" do

    setup do
      @msf = File.join(File.dirname(__FILE__), "example.msf")
      @base = ThermoMSF::Base.new(@msf)
    end

    should "Opened the example MSF file" do
      assert_not_nil(@base, "Base class returned nil")
      assert_instance_of(Sequel::SQLite::Database, @base.msf, "Not a Sequel::SQLite::Database connection")
    end

    should "Fetch spectra from the MSF file and expand the spectra XML" do
      spectrum = @base.spectrum.first
      assert_not_nil(spectrum)
      assert_equal(spectrum.unique_spectrum_id, 1, "First spectra does not have ID = 1, had #{spectrum.unique_spectrum_id}")
    end
    should "Fetch the first spectrum and expand the spectrum's XML" do
      spectrum = @base.spectrum.first
      assert_not_nil(spectrum.spectrum)
      xml =  ThermoMSF::ZipSpectrum.read(spectrum.spectrum).spectrum_xml
      assert_not_nil(xml)
      assert_instance_of(String, xml)
      assert_match(/\<MassSpectrum\s/, xml)
    end

    should "Fetch spectrum \#4 from the MSF file" do
      spectrum = @base.spectrum[4]
      assert_equal(spectrum.unique_spectrum_id, 4)
    end
  end
end