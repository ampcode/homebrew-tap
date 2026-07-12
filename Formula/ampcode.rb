class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783832508-gf7599b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783832508-gf7599b/amp-darwin-arm64"
      sha256 "cec522a1e8e348e029784bccd8da6b4cfc45f93ec63890e923ae95612dccc56d"
    else
      url "https://static.ampcode.com/cli/0.0.1783832508-gf7599b/amp-darwin-x64"
      sha256 "dfd60b57656e0a126c6113fa2ed7f6db15d066522744e2de7d1496ee2b8cb660"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783832508-gf7599b/amp-linux-arm64"
      sha256 "40d612064843fef2f082da35d7b44b74117d05ed3e84cf4eaf3c3b87168726c5"
    else
      url "https://static.ampcode.com/cli/0.0.1783832508-gf7599b/amp-linux-x64"
      sha256 "9464e5fa309978c2e4ad7d6adbd6c4deaed1db75af711e915aa5450d2a529c1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
