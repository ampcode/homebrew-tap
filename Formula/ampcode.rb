class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782909456-g629a79"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782909456-g629a79/amp-darwin-arm64"
      sha256 "d4949ec739508802886a3db03ef65dff31932d4d34fdd1778f66e8cce0f02782"
    else
      url "https://static.ampcode.com/cli/0.0.1782909456-g629a79/amp-darwin-x64"
      sha256 "ceb3c92f4afdc0b709400805d77d7cead898066840b60a4f884af0d3fa8869d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782909456-g629a79/amp-linux-arm64"
      sha256 "fc5626ef3a2757546145112f1a9cc09021b988f2f79ad7bcc2d5bf4c2885357c"
    else
      url "https://static.ampcode.com/cli/0.0.1782909456-g629a79/amp-linux-x64"
      sha256 "ee94c6f1320d805692b04c337ee509eefb990f6e17b744a4eee10fc1908d9045"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
