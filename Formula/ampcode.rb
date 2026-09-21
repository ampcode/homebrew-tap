class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789992037-g15a507"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789992037-g15a507/amp-darwin-arm64"
      sha256 "7bb0ab032fc167b112dfa87b86c7c0b6269d76393622ce028ba3b6384a9a4698"
    else
      url "https://static.ampcode.com/cli/0.0.1789992037-g15a507/amp-darwin-x64"
      sha256 "596babc8869a462d2994b98df928839d525b60684923a4160f1ad50e76f13b4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789992037-g15a507/amp-linux-arm64"
      sha256 "5e94f60f0cc6f8493cd4e2a1724fa7ae9d75bcb0b15f826aa06fa8986bfdd5f7"
    else
      url "https://static.ampcode.com/cli/0.0.1789992037-g15a507/amp-linux-x64"
      sha256 "21b07f8556e2d6ffa097139f73941def20813e33e68430239d0bf5914573ea70"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
