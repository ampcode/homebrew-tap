class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770221533-ga47676"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770221533-ga47676/amp-darwin-arm64"
      sha256 "1685d8e405f7504851f8bfa60e2a5333626a0d389d0e7c556d380e4cf6bcb475"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770221533-ga47676/amp-darwin-x64"
      sha256 "706a94557254c53a19b10a3cfdaf2a48a70b2584d04eeadb83f8b7405179f64c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770221533-ga47676/amp-linux-arm64"
      sha256 "ddf8708b399742a781225bd511314d228a37abc2a89396ca6d37f7353a9300a0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770221533-ga47676/amp-linux-x64"
      sha256 "1c468dd5a6953098f6067488af33ca21428bdce1177c5829385a87ef515aa0dc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
