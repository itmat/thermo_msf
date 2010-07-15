require 'nokogiri'
require "bindata"
module ThermoMSF
  class ZipSpectrum < BinData::Record
    endian :little
    uint32  :header
    uint16  :zipversion
    uint16  :bitflags
    uint16  :compression_method
    uint16  :modification_time
    uint16  :modification_date
    uint32  :crc32
    uint32  :compressed_size
    uint32  :uncompressed_size
    uint16  :filename_length
    uint16  :extra_field_length
    string :filename, :length => :filename_length
    string :extra_field, :length => :extra_field_length
    string :zipdata, :length => :compressed_size

    def spectrum_xml
      return @spectrum_xml if @spectrum_xml
      zstream= Zlib::Inflate.new(-Zlib::MAX_WBITS)
      @spectrum_xml  = zstream.inflate(zipdata)
      zstream.finish
      zstream.close
      @spectrum_xml
    end
  end
end