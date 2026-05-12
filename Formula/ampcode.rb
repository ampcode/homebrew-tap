class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778571974-gdaf1af"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778571974-gdaf1af/amp-darwin-arm64"
      sha256 "db50ca5ea01e687f90d0cee6a732775879bf5496b8074a15d4e4d54d102f9e17"
    else
      url "https://static.ampcode.com/cli/0.0.1778571974-gdaf1af/amp-darwin-x64"
      sha256 "421188eb29e28041e9fa9ad084ea714e97d4e6fe1974d45333d5bec29f314e73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778571974-gdaf1af/amp-linux-arm64"
      sha256 "9df427a48c6178356b4b62274a1f70f1867ab57ff3030cbaeb45a0e843951d04"
    else
      url "https://static.ampcode.com/cli/0.0.1778571974-gdaf1af/amp-linux-x64"
      sha256 "2ac633fb2b05762678c10b847f53ba13089b6bfc28315cdd5796b8419d09127e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
