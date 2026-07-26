class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785055505-g9690ae"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785055505-g9690ae/amp-darwin-arm64"
      sha256 "68d3f2a2306ade47bfa065d4c4e9cd80c910da1dfe4e3304d6652af806b6e990"
    else
      url "https://static.ampcode.com/cli/0.0.1785055505-g9690ae/amp-darwin-x64"
      sha256 "aa5fd4cb33360004e35f5721fa544263f014dadb9b706ed3ab7b7d15a216f883"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785055505-g9690ae/amp-linux-arm64"
      sha256 "36a078bf9debc6f44df099614bbb6635c0a9887f952259443b372d93ce583e7f"
    else
      url "https://static.ampcode.com/cli/0.0.1785055505-g9690ae/amp-linux-x64"
      sha256 "efe97360137c9bdfd7fa48c5c8ee705a59bcb83699972f8158d4496cf3a41cbc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
