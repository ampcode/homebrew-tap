class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769561511-g6e54b4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769561511-g6e54b4/amp-darwin-arm64"
      sha256 "ee96755ebe74a3f2322820d7320d044d67532c5445a3a76da40bb89bd4d6c4aa"
    else
      url "/0.0.1769561511-g6e54b4/amp-darwin-x64"
      sha256 "5579244f04b012882837bf95b2db22ccd1d792ea71a844e6368086773c094914"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769561511-g6e54b4/amp-linux-arm64"
      sha256 "b0ae336362251183f8082629f4ddaca46abd94864e59db25c14aa0060750bc94"
    else
      url "/0.0.1769561511-g6e54b4/amp-linux-x64"
      sha256 "c8171d6ab9001ee9e3ef6b2ceaf554527b9a924c83dd9dbee34a808b91b76673"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
