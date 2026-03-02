class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772453048-g702247"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453048-g702247/amp-darwin-arm64"
      sha256 "71dba3788d56169434f572ea49548b7afd6b79a27644b67f7cf8cf8b3dc05ba5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453048-g702247/amp-darwin-x64"
      sha256 "fcc3e0b035ad8a172812f63cae6837b9be2b06ca282a1afc84c0477327bb6b7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453048-g702247/amp-linux-arm64"
      sha256 "db9769d697ef584c5c6a3a3fbbc4447b556d86adce6cf4cbe943acd8e8c1235a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772453048-g702247/amp-linux-x64"
      sha256 "bbd22089389d501267f336c42aaf7c7a05cff9cd5e84eda3ee15392a7e7b1807"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
