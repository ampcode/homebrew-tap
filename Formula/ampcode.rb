class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777912178-gd6d908"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777912178-gd6d908/amp-darwin-arm64"
      sha256 "c726be3541f47a4bcfc0cb29e6570a33009236d3e520c78c51410f24974f8857"
    else
      url "https://static.ampcode.com/cli/0.0.1777912178-gd6d908/amp-darwin-x64"
      sha256 "90f57c06e0863ccf1c22816fdad282bb0c0a6244443565279cafb6330c1bfcba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777912178-gd6d908/amp-linux-arm64"
      sha256 "ea971330749f208c1f1d1aa9bc4887e7edc24cff9ad92bf3cf8e303512daf4e3"
    else
      url "https://static.ampcode.com/cli/0.0.1777912178-gd6d908/amp-linux-x64"
      sha256 "cdeaba86baa65f675e88c1b4f89e9d85481eda9f14dba34391daf7da87ca6089"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
