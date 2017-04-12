class WhoisAfr < Formula
  desc "AFRINIC's whois client"
  homepage "http://whois.afrinic.net/"
  url "ftp://ftp.afrinic.net/db/whois3_afr.tar.gz"
  sha256 "ed6796e8e7e027310b0d8576855c884c6155a3b02da393d4b3a7bc19f07abc98"
  version "3.2.2"

  def install
    system "./configure", "--prefix=#{prefix}"
    inreplace "Makefile", "whois$(EXEEXT)", "whois-afr$(EXEEXT)"
    system "make", "install"
  end
end
