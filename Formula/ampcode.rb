class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775332999-ga6c742"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775332999-ga6c742/amp-darwin-arm64"
      sha256 "130bb4d4dfb8b6c776d6e4e694625b0074ffdf8bf6738c7f3572d97f5e19938c"
    else
      url "https://static.ampcode.com/cli/0.0.1775332999-ga6c742/amp-darwin-x64"
      sha256 "4d6b4b84a92e7bf2d4533a3d27ec39f464d4cf9d0accfb09236d5af2da42836e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775332999-ga6c742/amp-linux-arm64"
      sha256 "432afd3cfe4fdfca4a725a1c28398c1e2d1b16bf705de1070da60d235696326c"
    else
      url "https://static.ampcode.com/cli/0.0.1775332999-ga6c742/amp-linux-x64"
      sha256 "b2dc0eb8d748b9604579b89953b8128e8a6ab3cf2c50ab4386e81f7fc96a4e28"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
