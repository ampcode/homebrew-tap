class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775665554-g3f871b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775665554-g3f871b/amp-darwin-arm64"
      sha256 "922346fa8caac16a8d123ce25e835f1301dfa7b840dfc8d6d7a59b94fc255076"
    else
      url "https://static.ampcode.com/cli/0.0.1775665554-g3f871b/amp-darwin-x64"
      sha256 "43c49277f46caf691c801b8320e045978f2e438554be72a3a633e42a098c8439"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775665554-g3f871b/amp-linux-arm64"
      sha256 "9d1da10e11c49b8f295a602f4edf3b7f6990fd402466d6b5f77d9a4ce187468e"
    else
      url "https://static.ampcode.com/cli/0.0.1775665554-g3f871b/amp-linux-x64"
      sha256 "afe6b40863b631047e0996732f940a84758146855a2317351ae2970b5a364d04"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
