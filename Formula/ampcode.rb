class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777465438-g80c284"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777465438-g80c284/amp-darwin-arm64"
      sha256 "6f7c6a0fa2b5b6eb736e6cbc1ab3377f7692ea108e7201d61005718e9bc34fa2"
    else
      url "https://static.ampcode.com/cli/0.0.1777465438-g80c284/amp-darwin-x64"
      sha256 "9a131ed9a453ba01641102609ed29ec74778a7a7349eb63b2767706a65e9b37d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777465438-g80c284/amp-linux-arm64"
      sha256 "50382369e3714cba05dbafce79934895946f55a1368621ebfe6767f06a693a48"
    else
      url "https://static.ampcode.com/cli/0.0.1777465438-g80c284/amp-linux-x64"
      sha256 "f9f0a250875f7d319364cfdd45e59e700c74854324ceeebf044bd26e1ee9ac4f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
