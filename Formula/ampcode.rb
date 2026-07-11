class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783800949-gaf0be3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783800949-gaf0be3/amp-darwin-arm64"
      sha256 "bbcac46db81567780e49863c30bb49987246f9c132059de39af898eea511eaa4"
    else
      url "https://static.ampcode.com/cli/0.0.1783800949-gaf0be3/amp-darwin-x64"
      sha256 "0818e797f4e7b45ccbe956ebb4168f32769ffe09e3cdae419464cf3f631ad6c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783800949-gaf0be3/amp-linux-arm64"
      sha256 "a28eb96167dc4546e9dc751610d675b5bd385122576c7389df571ced0708014c"
    else
      url "https://static.ampcode.com/cli/0.0.1783800949-gaf0be3/amp-linux-x64"
      sha256 "03a5d05ce76b1cc8f5cbdcf58390b7b8d5c1613707081e50f5f5a0cdada940fa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
