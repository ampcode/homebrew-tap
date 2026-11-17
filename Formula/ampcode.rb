class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794931244-ga961ae"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794931244-ga961ae/amp-darwin-arm64"
      sha256 "45cad3a95eee66eec4b533d4c5712ccae4fbbcea5918c5315367e9cc3cebe61f"
    else
      url "https://static.ampcode.com/cli/0.0.1794931244-ga961ae/amp-darwin-x64"
      sha256 "ddf250a949a7914f7d59faf9137f2776c462136ba8e599fc4f118fce2fb4dae9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794931244-ga961ae/amp-linux-arm64"
      sha256 "711cef80565fb54acd09299f83e23058e78345ccd17c1c9d03327852a62bbf99"
    else
      url "https://static.ampcode.com/cli/0.0.1794931244-ga961ae/amp-linux-x64"
      sha256 "76555f7b01028316de0689d6984da05a5bb482294c2b9160aeea9b162a4acc86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
