class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787299749-g1ad2d8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787299749-g1ad2d8/amp-darwin-arm64"
      sha256 "88d8d63718dc4bbdb3e47408aac94bd0aea2348275485700155ec6c210c72de3"
    else
      url "https://static.ampcode.com/cli/0.0.1787299749-g1ad2d8/amp-darwin-x64"
      sha256 "2ec403f92b0bdd852ae09603bfcc58263b8fb974e391c4f9adb5653f84a90cf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787299749-g1ad2d8/amp-linux-arm64"
      sha256 "080b7f851a5115286d2a2aa6b07dd09a7757591a6467a45a7eb232e1afbd4ec9"
    else
      url "https://static.ampcode.com/cli/0.0.1787299749-g1ad2d8/amp-linux-x64"
      sha256 "ce8183cf376d8984c5f3229d90c8aa67707da4d02bd1aece9aaedf18b0ca5f3b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
