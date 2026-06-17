class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781719643-gd088cd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781719643-gd088cd/amp-darwin-arm64"
      sha256 "bffe300f12aaaf93645238f23ef8ac0b85dbd862b3b6ba6122456d6ef1fb8b8c"
    else
      url "https://static.ampcode.com/cli/0.0.1781719643-gd088cd/amp-darwin-x64"
      sha256 "8fd429b342e39245d0731a3db34317e6c9e5a3ac2625587027b329153aa5e478"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781719643-gd088cd/amp-linux-arm64"
      sha256 "904349551fbbd485c625aa4fbac1d73e53c8eb2340955ef4a0f84520b9283fee"
    else
      url "https://static.ampcode.com/cli/0.0.1781719643-gd088cd/amp-linux-x64"
      sha256 "1fd27a18269a7331b833055df890dd2342a649b39cfe43f5955ce168ca7fddc1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
