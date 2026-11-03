class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793678438-gb9f0b4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793678438-gb9f0b4/amp-darwin-arm64"
      sha256 "c1f95fd15f144cbf72e200153cf8940c0093d75107b8574fbe9fbd73b74103a3"
    else
      url "https://static.ampcode.com/cli/0.0.1793678438-gb9f0b4/amp-darwin-x64"
      sha256 "ec06d87f4774511a6eccac8bada7a1118657d4c54dd5e5648b481d2490665b6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793678438-gb9f0b4/amp-linux-arm64"
      sha256 "420826fccbee7a27a2fe7426963911aeb403617c9ea474242da00654d81fbd18"
    else
      url "https://static.ampcode.com/cli/0.0.1793678438-gb9f0b4/amp-linux-x64"
      sha256 "e5ddbb7a1468b5ec923e7ef700572f8840448780760f6aaacb6f3f4e3f80661a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
