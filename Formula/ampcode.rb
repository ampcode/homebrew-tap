class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783074896-g09327d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783074896-g09327d/amp-darwin-arm64"
      sha256 "e6f9ec4827db660bd647778d1a739ce19e8152fd8e29137c82e2319f8775469b"
    else
      url "https://static.ampcode.com/cli/0.0.1783074896-g09327d/amp-darwin-x64"
      sha256 "f47a036574065ee95cc51cf60698ef4f23f97b1417a2a83f81d49da71325f465"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783074896-g09327d/amp-linux-arm64"
      sha256 "0764dfa01790a5f47e63679a0c1915c71b00de8a8b299db947ca33952446d312"
    else
      url "https://static.ampcode.com/cli/0.0.1783074896-g09327d/amp-linux-x64"
      sha256 "ebec2ee51e3713806f5607790bb0a6589fbb7808eda974b9609c1887c54f06b3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
