class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788321648-g793dab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788321648-g793dab/amp-darwin-arm64"
      sha256 "d78949da2cedc499cadf004196b8832a22b9710e5924f9bcc38575786261fd12"
    else
      url "https://static.ampcode.com/cli/0.0.1788321648-g793dab/amp-darwin-x64"
      sha256 "db088dadb38e61ccb4858d591445c2362dfe7304a3b8db640a6a90c2fcc1afc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788321648-g793dab/amp-linux-arm64"
      sha256 "d551663007c9fce5ceed8f6b56c83301115b4b9e36b763c206483704437bf156"
    else
      url "https://static.ampcode.com/cli/0.0.1788321648-g793dab/amp-linux-x64"
      sha256 "6f164018077d4a165ded4f148199b48422044f5fdca86bab7aa480990bcf738d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
