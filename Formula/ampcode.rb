class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787017442-g0cd974"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787017442-g0cd974/amp-darwin-arm64"
      sha256 "e88394b9d0d75ef1fb489ebe506f7f495d50e608c91c563c3cee7ddee36cbe4b"
    else
      url "https://static.ampcode.com/cli/0.0.1787017442-g0cd974/amp-darwin-x64"
      sha256 "3c782f283a0fac267d9e4437e45895eba26b59b219c10ba56b9a6ea34855660d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787017442-g0cd974/amp-linux-arm64"
      sha256 "f81865ed094203e036cdecc01301ec24ae0915cae066ebe38c7feb06fe341fe6"
    else
      url "https://static.ampcode.com/cli/0.0.1787017442-g0cd974/amp-linux-x64"
      sha256 "147167643a036fc73da1576d212ffe2374450a637472e20802769dfe854fb340"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
