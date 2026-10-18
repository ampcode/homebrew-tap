class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792339235-g285db8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792339235-g285db8/amp-darwin-arm64"
      sha256 "5d586a9051894008e20fe61567c94d5379c3e3671780372e212eb370a7787a13"
    else
      url "https://static.ampcode.com/cli/0.0.1792339235-g285db8/amp-darwin-x64"
      sha256 "889ca0445b84a3a2216374244418b422cc2ea81c588b5e10905b6bc76618600e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792339235-g285db8/amp-linux-arm64"
      sha256 "eb95a484ca3de7733907fa0c50fc71acc3e37dc8e21a701345014a166559d98b"
    else
      url "https://static.ampcode.com/cli/0.0.1792339235-g285db8/amp-linux-x64"
      sha256 "bf508d51617a71afdd6484d5d17c62e006ebcf0bf6ff73eaadf622298a32d755"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
