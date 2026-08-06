class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785975399-gb63fe6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785975399-gb63fe6/amp-darwin-arm64"
      sha256 "8ea52553f637386109d0d3c6db56ed5ea078c533b8d8d0fc87e1b65cbe7a012e"
    else
      url "https://static.ampcode.com/cli/0.0.1785975399-gb63fe6/amp-darwin-x64"
      sha256 "7c9fe177c3ef5effb351f36273bcff814fc91e9036876d4d0a2ed51f114d7934"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785975399-gb63fe6/amp-linux-arm64"
      sha256 "80a56777c21942e6b05c2625ea588f359df02bad792f0741fbab0e94f95edd30"
    else
      url "https://static.ampcode.com/cli/0.0.1785975399-gb63fe6/amp-linux-x64"
      sha256 "4a15314687e3c75ed3930a5a13148e450a46449a09260ee06320628ee0781eba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
