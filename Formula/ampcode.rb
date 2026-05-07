class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778118615-gb56a58"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778118615-gb56a58/amp-darwin-arm64"
      sha256 "af927343052a1f4f9541633f58241eccdd558c0387dda2dbee64b069b4a390ce"
    else
      url "https://static.ampcode.com/cli/0.0.1778118615-gb56a58/amp-darwin-x64"
      sha256 "13c2bc210b1eb489cddaf95fdfb76ee82eee9d04efc9880fce3e5530e24a3585"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778118615-gb56a58/amp-linux-arm64"
      sha256 "7f6d8b13c522ddf0874cb749075c84e50f0f48cbf4837f96edf06121e97ada71"
    else
      url "https://static.ampcode.com/cli/0.0.1778118615-gb56a58/amp-linux-x64"
      sha256 "145df24f459a115a61f24a8d7a64fca10492c83e8d4a958e6f7ccc5828e5a06b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
