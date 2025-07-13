class Ferry < Formula
  desc "Local network file sharing tool with CLI and web interface"
  homepage "https://github.com/wael-fadlallah/ferry"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wael-fadlallah/ferry/releases/download/v1.0.0/ferry_Darwin_arm64.tar.gz"
      sha256 `shasum -a 256 ../ferry/ferry-darwin-arm64`.split(' ')[0]
    else
      url "https://github.com/wael-fadlallah/ferry/releases/download/v1.0.0/ferry_Darwin_x86_64.tar.gz"
      sha256 `shasum -a 256 ../ferry/ferry-darwin-amd64`.split(' ')[0]
    end
  end

  def install
    bin.install "ferry"
  end

  test do
    assert_match "Ferry", shell_output("#{bin}/ferry -h", 0)
  end
end