class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775052527-g8f767e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775052527-g8f767e/amp-darwin-arm64"
      sha256 "d1987c2feadf29d53311e171625db877a1dab7e7f80be825d88d0ff76295dfa2"
    else
      url "https://static.ampcode.com/cli/0.0.1775052527-g8f767e/amp-darwin-x64"
      sha256 "50850b2fa0be746a7e4e7539d0849f675358aa62444e291ca7d45eff13817b85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775052527-g8f767e/amp-linux-arm64"
      sha256 "b7b68157954d077164746851ac0218696b95616bc8cfeb1dcc1642769ed3f516"
    else
      url "https://static.ampcode.com/cli/0.0.1775052527-g8f767e/amp-linux-x64"
      sha256 "512e5ee68ce42b10c15be061d9a078f2d9e07b5f6caaff331f7f9452df372faa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
