class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786450425-gba6cf7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786450425-gba6cf7/amp-darwin-arm64"
      sha256 "be582640c16cbab6b9c17e6331f6ade61d7979a427e1218cd48c5e47800e31d8"
    else
      url "https://static.ampcode.com/cli/0.0.1786450425-gba6cf7/amp-darwin-x64"
      sha256 "bdf3e7e82330af7fc60ae0461106275bd4f4f8f71927d198d0bccc185f293b91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786450425-gba6cf7/amp-linux-arm64"
      sha256 "4f1ff84f3b2d8f53ab3bc811cc73993040ec0d33e7e3bba3ca9ecfa7d144913f"
    else
      url "https://static.ampcode.com/cli/0.0.1786450425-gba6cf7/amp-linux-x64"
      sha256 "4fa98de0f1692316910b10daa9775413d65f404ebd8ac534643691a80feb9a5e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
