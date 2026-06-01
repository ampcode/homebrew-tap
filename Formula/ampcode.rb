class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780321779-g3f01fc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780321779-g3f01fc/amp-darwin-arm64"
      sha256 "ffbc477df7c718df7e8c44f8f82072d0f013c32d262cc44385c6a9425b015e07"
    else
      url "https://static.ampcode.com/cli/0.0.1780321779-g3f01fc/amp-darwin-x64"
      sha256 "2e50c2dfc9f923dd3539b281aa72c76cd16ca7468a34849267f1238bb31328db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780321779-g3f01fc/amp-linux-arm64"
      sha256 "b31c1ad9c59e2f4f8856e9d2280371be74dca46c4fa240aad3e2ad1eaf46a369"
    else
      url "https://static.ampcode.com/cli/0.0.1780321779-g3f01fc/amp-linux-x64"
      sha256 "5397487c2cd326d9811b07ff21b4e41698a49e608dd47ceeea4e22157352e4eb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
