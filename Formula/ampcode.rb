class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781542038-g80f032"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781542038-g80f032/amp-darwin-arm64"
      sha256 "789bab0e9af1e59bcaf2d3c863710ac60afe96a631c0b85576f0a7b682bcc31e"
    else
      url "https://static.ampcode.com/cli/0.0.1781542038-g80f032/amp-darwin-x64"
      sha256 "42218913c535039e4cc0be40337d99257b8f633514dc0f86f287e3c150bc849e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781542038-g80f032/amp-linux-arm64"
      sha256 "69a132a4bd18d59af9be216f914b4999ecdb745a919c7ac5bee1032e684a261f"
    else
      url "https://static.ampcode.com/cli/0.0.1781542038-g80f032/amp-linux-x64"
      sha256 "49555ec205463d4a9f37e7fddda40351b9aa170e37bdaeb95fc188427dac1a96"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
