class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784369155-g049a72"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784369155-g049a72/amp-darwin-arm64"
      sha256 "9d24d03cde23cc2e272d335b2e7e5f4799e39baf085b42b8e6e04419a1c9f7e0"
    else
      url "https://static.ampcode.com/cli/0.0.1784369155-g049a72/amp-darwin-x64"
      sha256 "4c2d5f7cc2e5bbdcafd59a9f469d50451e55af09141660d2528ea45bf163a12d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784369155-g049a72/amp-linux-arm64"
      sha256 "843bc8065b7e99b03ef073a758de6bc2b26f8d519ee55e9667bf7aafa33f28c6"
    else
      url "https://static.ampcode.com/cli/0.0.1784369155-g049a72/amp-linux-x64"
      sha256 "c8b3eaec02a188810e80e36bd774812b6f4e568553cb0bb7304350dc2ea15d94"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
