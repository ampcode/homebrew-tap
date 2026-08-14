class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786681855-gd3dce4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786681855-gd3dce4/amp-darwin-arm64"
      sha256 "523d333eef958c36a3c00e0bc1c5ba856cf2e7c60c2b56574ca67a3900c00915"
    else
      url "https://static.ampcode.com/cli/0.0.1786681855-gd3dce4/amp-darwin-x64"
      sha256 "b4c8ed6787ee88f9b11950386eb8dffa1852cbd30468f2b6a35a13f3622c0b70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786681855-gd3dce4/amp-linux-arm64"
      sha256 "e8a80e83dab95de4aacab2e1db8dc25d78acfb41b92ef4a85fa3cbec4d8348a6"
    else
      url "https://static.ampcode.com/cli/0.0.1786681855-gd3dce4/amp-linux-x64"
      sha256 "33476722573c6ca4ba427ab1a4db4acb58e7a5e640dd438d765182d118a8af54"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
