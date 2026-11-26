class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795665646-gb77778"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795665646-gb77778/amp-darwin-arm64"
      sha256 "9f15dd2dbd23bbdf787e974eeec090f6dbeeb511ee49c687fec34e67d84877c2"
    else
      url "https://static.ampcode.com/cli/0.0.1795665646-gb77778/amp-darwin-x64"
      sha256 "4e2cd8bff52e5d45f3b0185bf10a5f8cf74ae30ee78255a24eb9c27e94353c03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795665646-gb77778/amp-linux-arm64"
      sha256 "a762dde287cc15ac43e0e324abeb4f8f6193c330b576d34be628ce0436582506"
    else
      url "https://static.ampcode.com/cli/0.0.1795665646-gb77778/amp-linux-x64"
      sha256 "7826728489affc369ac84625329404392294edbab121d75f36d067e259a2753d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
