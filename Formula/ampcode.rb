class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771070505-g645f1d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771070505-g645f1d/amp-darwin-arm64"
      sha256 "afcb00bba339ac1652e070c8cdd9038f35865293822a93958cb16b025e7d61ff"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771070505-g645f1d/amp-darwin-x64"
      sha256 "4e53d97fe0e1b9a1995e7f4a03e9d4f9b20b368d4eb9c510bdd99712062abb6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771070505-g645f1d/amp-linux-arm64"
      sha256 "6fd86442edd6b60c89ed74dccaa7a95ea835d5f39d8c9c6d9d54d521a690d667"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771070505-g645f1d/amp-linux-x64"
      sha256 "72baa27a97746e052a22c91a8c920e9f16f98ec1ac96a82ce8a2ca4223c4bea3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
