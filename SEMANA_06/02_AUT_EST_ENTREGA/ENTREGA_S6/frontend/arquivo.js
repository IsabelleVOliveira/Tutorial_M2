$(document).ready(function() {
    var texto = $('#texto');
    var words = texto.text().split(' ');

    texto.empty();

    for (var i = 0; i < words.length; i++) {
      var span = $('<span/>').addClass('zoom').text(words[i] + ' ');
      texto.append(span);
    }

    $('.zoom').hover(function() {
      $(this).addClass('zoom'); // Adiciona a classe 'zoom' quando o mouse passa por cima
    }, function() {
      $(this).removeClass('zoom'); // Remove a classe 'zoom' quando o mouse sai de cima
    });
  });

  $(document).ready(function() {
    $('.color-change').hover(
      function() {
        $(this).css('cursor', 'pointer');
        $(this).find('*').not('p').each(function() {
          var randomColor = getRandomColor();
          $(this).css('color', randomColor);
        });
      },
      function() {
        $(this).find('*').not('h1').each(function() {
          $(this).css('color', '');
        });
      }
    );
  });

    function getRandomColor() {
      var letters = 'p';
      var color = '#';
      for (var i = 0; i < 6; i++) {
      color += letters[Math.floor(Math.random() * 16)];
      }
     return color;
    }